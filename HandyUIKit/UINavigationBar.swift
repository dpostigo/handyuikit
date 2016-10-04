//
// Created by Dani Postigo on 9/30/16.
//

import Foundation
import UIKit

public class CustomNavigationBar: UINavigationBar {

    public var customHeight: CGFloat = 44 {
        didSet {
            self.invalidateIntrinsicContentSize()
        }
    }

    override public init(frame: CGRect) {
        super.init(frame: frame)
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override public func intrinsicContentSize() -> CGSize {
        return CGSize(width: UIViewNoIntrinsicMetric, height: self.customHeight)
    }

    override public func sizeThatFits(size: CGSize) -> CGSize {
        return CGSize(width: super.sizeThatFits(size).width, height: self.intrinsicContentSize().height)
    }


}

extension UINavigationController {
    public convenience init(rootViewController: UIViewController, navigationBarClass: AnyClass?) {
        self.init(navigationBarClass: navigationBarClass, toolbarClass: nil)
        self.setViewControllers([rootViewController], animated: false)
    }

    public var customNavigationBar: CustomNavigationBar? { return self.navigationBar as? CustomNavigationBar }
}
