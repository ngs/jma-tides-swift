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
            XCTAssertEqual(parser.records[d].locationId, .TK)
            XCTAssertEqual(parser.records[d].levels.count, 24)
            let date = Date(timeIntervalSince1970: TimeInterval(1577804400 + d * 24 * 60 * 60))
            XCTAssertEqual(parser.records[d].date, date)
            for h in 0..<24 {
                XCTAssertEqual(parser.records[d].levels[h].date, date.addingTimeInterval(TimeInterval(h * 60 * 60)))
            }
        }
        XCTAssertEqual(
            parser.record(for: Date(timeIntervalSince1970: TimeInterval(1595909313)))?.date.timeIntervalSince1970,
            1595862000.0
        )
    }

    func testSortedLocations() {
        let sorted = Location.sort(from: 34.8776559, 135.6652432)
        XCTAssertEqual(sorted.count, 239)
        XCTAssertEqual(sorted[0], Location(by: .MZ))
        XCTAssertEqual(sorted[1], Location(by: .AM))
        XCTAssertEqual(sorted[2], Location(by: .J5))
        XCTAssertEqual(sorted[3], Location(by: .OS))
        XCTAssertEqual(sorted[0].url(for: 2020).absoluteString,
                       "https://www.data.jma.go.jp/gmd/kaiyou/data/db/tide/suisan/txt/2020/MZ.txt")
        XCTAssertEqual(sorted[1].url(for: 2020).absoluteString,
                       "https://www.data.jma.go.jp/gmd/kaiyou/data/db/tide/suisan/txt/2020/AM.txt")
        XCTAssertEqual(sorted[2].url(for: 2020).absoluteString,
                       "https://www.data.jma.go.jp/gmd/kaiyou/data/db/tide/suisan/txt/2020/J5.txt")
        XCTAssertEqual(sorted[3].url(for: 2020).absoluteString,
                       "https://www.data.jma.go.jp/gmd/kaiyou/data/db/tide/suisan/txt/2020/OS.txt")
    }

    func testLocationById() {
        let found = Location(by: .OS)
        XCTAssertEqual(found.name, "大阪")
    }

    static var allTests = [
        ("testParsed", testParsed),
        ("testSortedLocations", testSortedLocations)
    ]
}
