import Foundation

let timeZone = TimeZone(identifier: "Asia/Tokyo")!

private func extractLine(_ string: String, _ start: Int, _ length: Int) -> String {
    let startIndex = string.index(string.startIndex, offsetBy: start)
    let endIndex = string.index(string.startIndex, offsetBy: start + length)
    let range = startIndex..<endIndex
    return String(string[range]).trimmingCharacters(in: .whitespacesAndNewlines)
}

private func extractDate(_ string: String) -> Date {
    var calendar = Calendar(identifier: .gregorian)
    calendar.timeZone = timeZone
    let year = 2000 + (Int(extractLine(string, 72, 2)) ?? 0)
    let month = Int(extractLine(string, 74, 2)) ?? 0
    let day = Int(extractLine(string, 76, 2)) ?? 0
    var components = DateComponents()
    components.timeZone = timeZone
    components.year = year
    components.month = month
    components.day = day
    return calendar.date(from: components) ?? Date(timeIntervalSince1970: 0)
}

private func extractTime(_ string: String, start: Int) -> TimeInterval? {
    if extractLine(string, start, 4) == "9999" {
        return nil
    }
    let hours = Int(extractLine(string, start, 2)) ?? 0
    let minutes = Int(extractLine(string, start + 2, 2)) ?? 0
    return TimeInterval((hours * 60 + minutes) * 60)
}

private func extractLocationId(_ string: String) -> LocationID {
    return LocationID(rawValue: extractLine(string, 78, 2))!
}

private func extractLevels(_ string: String, _ date: Date, _ start: Int) -> [Level] {
    let levels: [Level?] = (0..<4).map {
        guard let time = extractTime(string, start: start + $0 * 7) else {
            return nil
        }
        return Level(
            date: date.addingTimeInterval(time),
            value: Int(extractLine(string, start + $0 * 7 + 4, 3)) ?? 0
        )
    }
    return (levels.filter { $0 != nil } as? [Level]) ?? []
}

struct Parser {
    let records: [Record]
    init(data: Data) {
        records = String(data: data, encoding: .utf8)?.split(separator: "\n").map { Record(String($0)) } ?? []
    }

    func record(for date: Date) -> Record? {
        let formatter = DateFormatter()
        formatter.timeZone = timeZone
        formatter.dateStyle = .full
        formatter.timeStyle = .none
        let formattedDate = formatter.string(from: date)
        return records.first { record -> Bool in
            return formatter.string(from: record.date) == formattedDate
        }
    }
}

struct Level {
    let date: Date
    let value: Int
}

struct Record {
    let levels: [Level]
    let date: Date
    let locationId: LocationID
    let highLevels: [Level]
    let lowLevels: [Level]
    init(_ string: String) {
        let date = extractDate(string)
        levels = (0..<24).map {
            Level(
                date: date.addingTimeInterval(TimeInterval($0 * 60 * 60)),
                value: Int(extractLine(string, $0 * 3, 3)) ?? 0
            )
        }
        highLevels = extractLevels(string, date, 80)
        lowLevels = extractLevels(string, date, 108)
        self.date = date
        locationId = extractLocationId(string)
    }
}
