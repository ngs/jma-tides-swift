import Foundation

public struct Location {
    // swiftlint:disable:next identifier_name
    public let id: LocationID
    public let name: String
    public let kana: String
    public let lat: Double
    public let long: Double

    // swiftlint:disable:next identifier_name
    public init(by id: LocationID) {
        let found = Location.all.first(where: { $0.id == id })!
        self.id = found.id
        name = found.name
        kana = found.kana
        lat = found.lat
        long = found.long
    }

    // swiftlint:disable:next identifier_name
    public init(_ name: String, _ kana: String, _ id: LocationID, _ lat: Double, _ long: Double) {
        self.name = name
        self.kana = kana
        self.id = id
        self.lat = lat
        self.long = long
    }

    public func url(for year: Int) -> URL {
        return URL(string: "https://www.data.jma.go.jp/gmd/kaiyou/data/db/tide/suisan/txt/\(year)/\(id).txt")!
    }

    public func distance(from lat: Double, _ long: Double) -> Double {
        // https://www.movable-type.co.uk/scripts/latlong.html
        // swiftlint:disable identifier_name
        let R = 6371e3
        let lat1 = lat
        let lat2 = self.lat
        let lon1 = long
        let lon2 = self.long
        let φ1 = lat1 * Double.pi / 180
        let φ2 = lat2 * Double.pi / 180
        let Δφ = (lat2 - lat1) * Double.pi / 180
        let Δλ = (lon2 - lon1) * Double.pi / 180
        let a = sin(Δφ / 2) * sin(Δφ / 2) + cos(φ1) * cos(φ2) * sin(Δλ / 2) * sin(Δλ / 2)
        let c = 2 * atan2(sqrt(a), sqrt(1 - a))
        // swiftlint:enable identifier_name
        return R * c
    }

    public static func sort(from lat: Double, _ long: Double) -> [Location] {
        return Location.all.sorted { (loc1: Location, loc2: Location) -> Bool in
            return loc1.distance(from: lat, long) < loc2.distance(from: lat, long)
        }
    }
}

extension Location: Equatable {
    public static func == (lhs: Location, rhs: Location) -> Bool {
        return lhs.id == rhs.id
    }
}
