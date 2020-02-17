//
//  File.swift
//  
//
//  Created by Markim Shaw on 2/17/20.
//

import Foundation

#if canImport(UIKit)

import UIKit

public enum BoxSize {
  case maximized
  case minimized
}

extension CGSize {
  
  /// This function will return a `CGSize` that is of box shape based on the current `CGSize`'s dimensions. `.minimized` will take the smaller of the height and width and make a box from that. `.maximized` will take the larger of the height and width and make a box from that.
  public func boxify(_ size: BoxSize) -> Box {
    switch size {
    case .maximized:
      let largestDimension = self.width > self.height ? self.width : self.height
      let boxSize = CGSize(width: largestDimension, height: largestDimension)
      return Box(size: boxSize)
    case .minimized:
      let smallestDimension = self.width < self.height ? self.width : self.height
      let boxSize = CGSize(width: smallestDimension, height: smallestDimension)
      return Box(size: boxSize)
    }
  }
}

#endif
