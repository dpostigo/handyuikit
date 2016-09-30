//
// Created by Dani Postigo on 9/30/16.
//

import Foundation
import UIKit


public class CircleButton: UIButton {

    let shapeLayer = CAShapeLayer()

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override public func intrinsicContentSize() -> CGSize {
        let size = super.intrinsicContentSize()
        let large = max(size.width, size.height)
        return CGSize(width: large, height: large)
    }

}