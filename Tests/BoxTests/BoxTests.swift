import XCTest
@testable import Box

final class BoxTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Box().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
