//
// Created by Dani Postigo on 9/30/16.
//

import Foundation
import UIKit
import Handy

public class CircleButton: ShapeButton {

    public var circleWidth: CGFloat = 10 {
        didSet { self.shapeLayer.path = UIBezierPath(circleWithRadius: self.circleWidth).CGPath }
    }

    public init(width: CGFloat) {
        super.init(frame: CGRect(width: width, height: width))
        ({ self.circleWidth = width })()
        self.setContentHuggingPriority(1000, forAxis: .Horizontal)
    }

    override public func intrinsicContentSize() -> CGSize {
        return CGSize(width: self.circleWidth, height: self.circleWidth)
    }

    required public init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
}


public class ShapeButton: UIButton {

    public let shapeLayer = CAShapeLayer()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.mask = self.shapeLayer
    }

    required public init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }

    override public func intrinsicContentSize() -> CGSize {
        let size = super.intrinsicContentSize()
        let large = max(size.width, size.height)
        return CGSize(width: large, height: large)
    }

    // MARK: Convenience

    convenience public init(path: UIBezierPath) {
        self.init()
        self.shapeLayer.path = path.CGPath
    }
}