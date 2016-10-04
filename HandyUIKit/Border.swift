//
// Created by Dani Postigo on 10/3/16.
//

import Foundation

public class Border: UIView {

    var stroke: CGFloat = 0.5
    var axis: UILayoutConstraintAxis = .Horizontal

    public convenience init(axis: UILayoutConstraintAxis) {
        self.init()
        self.axis = axis
    }

    public convenience init(axis: UILayoutConstraintAxis, color: UIColor) {
        self.init(color: color)
        self.axis = axis
    }

    public override func intrinsicContentSize() -> CGSize {
        let size = super.intrinsicContentSize()
        return axis == .Vertical ? CGSize(width: self.stroke, height: size.height) : CGSize(width: size.width, height: self.stroke)
    }

}
