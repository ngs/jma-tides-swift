import XCTest
@testable import JMATides

final class JMATidesTests: XCTestCase {
    func testExample() {
        let url = URL(fileURLWithPath: #file).deletingLastPathComponent().deletingLastPathComponent().appendingPathComponent("Fixtures/TK.txt")
        let data = try! Data(contentsOf: url)
        let parser = Parser(data: data)
        parser.records.forEach { record in
            XCTAssertEqual(record.locationId, "TK")
            XCTAssertEqual(record.levels.count, 24)
        }
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
