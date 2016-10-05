//
// Created by Dani Postigo on 10/5/16.
//

import Foundation
import UIKit

public class GenericView: UIView {
    public var textLabel: UILabel?
    public var detailTextLabel: UILabel?
    public var imageView: UIImageView?
}

public class PassThroughView: UIView {
    override public func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView? {
        let view = super.hitTest(point, withEvent: event)
        return view == self ? nil : view
    }
}