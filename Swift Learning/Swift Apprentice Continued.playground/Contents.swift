// chapter 22. page 445 / 555
// 100 pages to go.

import JavaScriptCore
import Foundation
import SwiftUI

// encoding & decoding types.

// func encode(to: Encoder) throws
// init(from decoder: Decoder) throws

typealias Codable = Encodable & Decodable

// struct Employee {
//    var name: String
//    var id: Int
// }

struct Employee: Codable { // 👀
    var name: String
    var id: Int
    var favouriteToy: Toy?
}

struct Toy: Codable {
    var name: String
}

let toy1 = Toy(name: "Teddy Bear")
let employee1 = Employee(name: "John Applebees", id: 7, favouriteToy: toy1)

let jsonEncoder = JSONEncoder()
let jsonData = try jsonEncoder.encode(employee1)
// must use try encode because it might try and fail. to encode.

print(jsonData)
let jsonString = String(data: jsonData, encoding: .utf8)! // use string
print(jsonString)
// now you can send this over for use via an API portal.


// now for decoding.
let jsonDecoder = JSONDecoder()
// on decode, revert back to the type with self. and pass in the jsonData.
let employee2 = try jsonDecoder.decode(Employee.self, from: jsonData)

// Renaming properties with CodingKeys
// It turns out that the gifts department API requires that the employee ID appear as employeeId instead of id. Luckily, Swift provides a solution to this kind of problem.

extension Employee {
    // the extension doesn't need a conforming type like codable.
    enum CodingKeys: String, CodingKey {
        // CodingKey..
        case id = "employeeId"
        case name
        case favouriteToy
    }
}
print(jsonString) // it cnaged indeed.


// what if you need to change everything so as to change conformance.

enum codingKeys: String, CodingKey {
    case id = "employeeId"
    case name
    case gift
}

// then i need to remove employee conformance on codable.
//cextension Employee: Encodable {
    // will be provided automatically.
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: codingKeys.self)
//        try container.encode(name, forKey: .name)
//        try container.encode(id, forKey: .id)
//        try container.encode(favouriteToy?.name, forKey: .gift)
//    }
//}

import XCTest

class EncoderDecoderTests: XCTestCase {
    var jsonEncoder: JSONEncoder!
    var jsonDecoder: JSONDecoder!
    var toy1: Toy!
    var employee1: Employee!
    
    override func setUp() {
        super.setUp()
        jsonEncoder = JSONEncoder()
        jsonDecoder = JSONDecoder()
        toy1 = Toy(name: "Teddy Bear")
        employee1 = Employee(name: "John Appleseed", id: 7, favouriteToy: toy1)
    }
}

// then to adding tests.

func testEncoder() {
    let jsonData = try? jsonEncoder.encode(employee1)
    XCTAssertNotNil(jsonData, "Encoding failed")
    
    let jsonString = String(data: jsonData!, encoding: .utf8)!
    XCTAssertEqual(jsonString,"{\"name\":\"John Appleseed\",\"gift\":\"Teddy Bear\",\"employeeId\":7}")
}

func testDecoder() {
  let jsonData = try! jsonEncoder.encode(employee1)
  let employee2 = try? jsonDecoder.decode(Employee.self, from:
jsonData)
  XCTAssertNotNil(employee2)
  XCTAssertEqual(employee1.name, employee2!.name)
  XCTAssertEqual(employee1.id, employee2!.id)
    XCTAssertEqual(employee1.favouriteToy?.name, employee2!.favouriteToy?.name)
}

EncoderDecoderTests.defaultTestSuite.run()
