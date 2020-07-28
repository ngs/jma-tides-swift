import XCTest
@testable import JMATides

// swiftlint:disable identifier_name force_try

final class JMATidesTests: XCTestCase {
    func testParsed() {
        let url = URL(fileURLWithPath: #file)
            .deletingLastPathComponent()
            .deletingLastPathComponent()
            .appendingPathComponent("Fixtures/TK.txt")
        let data = try! Data(contentsOf: url)
        let parser = Parser(data: data)
        XCTAssertEqual(parser.records.count, 366)
        for d in 0..<366 {
            XCTAssertEqual(parser.records[d].locationId, "TK")
            XCTAssertEqual(parser.records[d].levels.count, 24)
            let date = Date(timeIntervalSince1970: TimeInterval(1577804400 + d * 24 * 60 * 60))
            XCTAssertEqual(parser.records[d].date, date)
            for h in 0..<24 {
                XCTAssertEqual(parser.records[d].levels[h].date, date.addingTimeInterval(TimeInterval(h * 60 * 60)))
            }
        }
    }

    func testSortedLocations() {
        let sorted = Location.sort(from: 34.8776559, 135.6652432)
        XCTAssertEqual(sorted.count, 239)
        XCTAssertEqual(sorted[0].id, "MZ")
        XCTAssertEqual(sorted[1].id, "AM")
        XCTAssertEqual(sorted[2].id, "J5")
        XCTAssertEqual(sorted[3].id, "OS")
    }

    static var allTests = [
        ("testParsed", testParsed),
        ("testSortedLocations", testSortedLocations)
    ]
}
