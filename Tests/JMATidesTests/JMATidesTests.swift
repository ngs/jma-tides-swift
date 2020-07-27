import XCTest
@testable import JMATides

final class JMATidesTests: XCTestCase {
    func testExample() {
        let url = URL(fileURLWithPath: #file).deletingLastPathComponent().deletingLastPathComponent().appendingPathComponent("Fixtures/TK.txt")
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

    static var allTests = [
        ("testExample", testExample),
    ]
}
