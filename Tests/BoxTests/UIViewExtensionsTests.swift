//
//  File.swift
//  
//
//  Created by Markim Shaw on 2/17/20.
//

import Foundation
import Box
import XCTest

class UIViewExtensionsTests: XCTestCase {
  
  var randomSize: CGSize!
  
  override func setUp() {
    super.setUp()
    
    randomSize = CGSize(width: 80.0, height: 100.0)
  }
  
  override func tearDown() {
    super.tearDown()
    
    randomSize = nil
  }
  
  /// This function will test if a `CGSize` object is able to create a box
  func testBoxify_minimized() {
    // Given: - A CGSize object
    let minimumSize: CGFloat = 80.0
    let maximumSize: CGFloat = 100.0
    let localSize: CGSize = CGSize(width: minimumSize, height: maximumSize)
    
    // When: - You boxify a CGSize object with dimensions w:80.0,h:100.0 - minimized
    let boxifiedSizeObject = localSize.boxify(.minimized)
    
    // Then: - You should have a `Box` object with dimensions w:80,h:80
    let expectedSize = CGSize(width: minimumSize, height: minimumSize)
    XCTAssertTrue(boxifiedSizeObject == expectedSize)
  }
  
  /// This function will test if a `CGSize` object is able to create a box
  func testBoxify_maximized() {
    // Given: - A CGSize object
    let minimumSize: CGFloat = 80.0
    let maximumSize: CGFloat = 100.0
    let localSize: CGSize = CGSize(width: minimumSize, height: maximumSize)
    
    // When: - You boxify a CGSize object with dimensions w:80.0,h:100.0 - minimized
    let boxifiedSizeObject = localSize.boxify(.maximized)
    
    // Then: - You should have a `Box` object with dimensions w:80,h:80
    let expectedSize = CGSize(width: maximumSize, height: maximumSize)
    XCTAssertTrue(boxifiedSizeObject == expectedSize)
  }
}
