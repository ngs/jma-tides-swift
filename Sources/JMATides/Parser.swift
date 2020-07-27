import Foundation

fileprivate func extractLine(_ string: String, _ start: Int, _ length: Int) -> String {
    let startIndex = string.index(string.startIndex, offsetBy: start)
    let endIndex = string.index(string.startIndex, offsetBy: start + length)
    let range = startIndex..<endIndex
    return String(string[range]).trimmingCharacters(in: .whitespacesAndNewlines)
}

fileprivate func extractDate(_ string: String) -> Date {
    let year = 2000 + (Int(extractLine(string, 72, 2)) ?? 0)
    let month = Int(extractLine(string, 74, 2)) ?? 0
    let day = Int(extractLine(string, 76, 2)) ?? 0
    var components = DateComponents()
    components.timeZone = TimeZone(secondsFromGMT: 9 * 24 * 60 * 60 )
    components.year = year
    components.month = month
    components.day = day
    return calendar.date(from: components) ?? Date(timeIntervalSince1970: 0)
}

fileprivate func extractTime(_ string: String, start: Int) -> TimeInterval? {
    if extractLine(string, start, 4) == "9999" {
        return nil
    }
    let hours = Int(extractLine(string, start, 2)) ?? 0
    let minutes = Int(extractLine(string, start + 2, 2)) ?? 0
    return TimeInterval((hours * 60 + minutes) * 60)
}

fileprivate func extractLocationId(_ string: String) -> String {
    return extractLine(string, 78, 2)
}

fileprivate let calendar = Calendar(identifier: .gregorian)

struct Parser {
    let records: [Record]
    init(data: Data) {
        records = String(data: data, encoding: .utf8)?.split(separator: "\n").map { Record(String($0)) } ?? []
    }
}

struct Level {
    let date: Date
    let value: Int
}

struct Record {
    let levels: [Level]
    let date: Date
    let locationId: String
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
        let highLevels: [Level?] = (0..<4).map {
            guard let time = extractTime(string, start: 80 + $0 * 7) else {
                return nil
            }
            return Level(
                date: date.addingTimeInterval(time),
                value: Int(extractLine(string, 80 + $0 * 7 + 4, 3)) ?? 0
            )
        }
        self.highLevels = (highLevels.filter { $0 != nil } as? [Level]) ?? []
        let lowLevels: [Level?] = (0..<4).map {
            guard let time = extractTime(string, start: 108 + $0 * 7) else {
                return nil
            }
            return Level(
                date: date.addingTimeInterval(time),
                value: Int(extractLine(string, 108 + $0 * 7 + 4, 3)) ?? 0
            )
        }
        self.lowLevels = (lowLevels.filter { $0 != nil } as? [Level]) ?? []
        self.date = date
        locationId = extractLocationId(string)
    }
}
