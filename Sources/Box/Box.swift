
import Foundation

#if canImport(UIKit)

import UIKit

private var goldenRatio: CGFloat = 1.618

public struct Box {
  private let size: CGSize
  
  public var width: CGFloat {
    return size.width
  }
  
  public var height: CGFloat {
    return size.height
  }
  
  internal init(size: CGSize) {
    self.size = size
  }
  
  /// Returns a `Box` smaller than the current box determined by the golden ratio.
  func smallGoldenBox() -> Box {
    let newSizeWidth = ceil(size.width * (goldenRatio - 1))
    
    guard newSizeWidth > 1 else {
      return 1.0
    }
    
    let box: Box = Box(size: CGSize(width: newSizeWidth, height: newSizeWidth))
    return box
  }
  
  var circleLayer: CAShapeLayer {
    let layer = CAShapeLayer()
    layer.path = UIBezierPath(ovalIn: CGRect(origin: .zero, size: size)).cgPath
    return layer
  }
  
  var boxLayer: CAShapeLayer {
    let layer = CAShapeLayer()
    layer.path = UIBezierPath(rect: CGRect(origin: .zero, size: size)).cgPath
    return layer
  }
}

extension Box: ExpressibleByFloatLiteral {
  
  public typealias FloatLiteralType = Float
  
  public init(floatLiteral value: Float) {
    self.size = CGSize(width: CGFloat(value), height: CGFloat(value))
  }
  
}

extension Box: Equatable {
  
  static public func ==(lhs: Box, rhs: CGSize) -> Bool {
    return lhs.size == rhs
  }
}

#endif
