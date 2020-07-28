//
//  File.swift
//  
//
//  Created by Atsushi Nagase on 2020/07/28.
//

import Foundation

struct Location {
    // swiftlint:disable:next identifier_name
    let id: String
    let name: String
    let kana: String
    let lat: Double
    let long: Double

    // swiftlint:disable:next identifier_name
    init(_ name: String, _ kana: String, _ id: String, _ lat: Double, _ long: Double) {
        self.name = name
        self.kana = kana
        self.id = id
        self.lat = lat
        self.long = long
    }

    func distance(from lat: Double, _ long: Double) -> Double {
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

    static func sort(from lat: Double, _ long: Double) -> [Location] {
        return locations.sorted { (loc1: Location, loc2: Location) -> Bool in
            return loc1.distance(from: lat, long) < loc2.distance(from: lat, long)
        }
    }
}
