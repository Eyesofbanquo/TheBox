import XCTest
@testable import Box

final class BoxTests: XCTestCase {
  
  func testBoxLiterals() {
    // When: - Assigning a literal to a box type
    let box: Box = 12.0
    
    // Then: - A box of that size is created
    let expectedWidth: CGFloat = 12.0
    let expectedHeight: CGFloat = 12.0
    
    XCTAssertEqual(box.width, expectedWidth)
    XCTAssertEqual(box.height, expectedHeight)
  }
  
  func testBoxEquality() {
    // Given: - A box of a set size
    let box: Box = 12.0
    
    // When: - A box of that size is created
    let secondBox: Box = 12.0
    
    // Assert: - Both boxes are equal
    XCTAssertEqual(box, secondBox)
  }
  
  func testBoxToCGSizeComparison() {
    // Given: - A box of a set size
    let box: Box = 12.0
    
    // When: A CGSize object is created of the same size
    let cgSize: CGSize = CGSize(width: box.width, height: box.height)
    
    // Assert: Both the box and size are equal
    XCTAssertTrue(box == cgSize)
  }
}
