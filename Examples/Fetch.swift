import JMATides
import Foundation

let location = Location(by: .TK)
let now = Date()
let year = Calendar.current.component(.year, from: now)
let url = location.url(for: year)

URLSession.shared.dataTask(with: url) { (data, res, err) in
    let parser = Parser(data: data!)
    let record = parser.record(for: now)!
    record.levels.map { $0.value }
}.resume()
