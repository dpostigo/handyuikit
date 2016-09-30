//
// Created by Dani Postigo on 9/30/16.
//

import Foundation
import UIKit

public class HandyNavigationBar: UINavigationBar {

    public var customHeight: CGFloat = 50 {
        didSet {
            self.invalidateIntrinsicContentSize()
        }
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
}

//
//extension UINavigationController {
//
//    enum Style {
//        case White
//        case Black
//    }
//
//    convenience init(rootViewController: UIViewController, style: Style) {
//        switch style {
//            case .White:
//                self.init(navigationBarClass: BumpersNavigationBar.self, toolbarClass: nil)
//                self.navigationBar.translucent = false
//                self.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
//                self.navigationBar.shadowImage = UIImage()
//                self.setViewControllers([rootViewController], animated: false)
//                self.view.backgroundColor = UIColor.whiteColor()
//            case .Black:
//                // TODO:
//                self.init(rootViewController: rootViewController)
//                break
//        }
//    }
//
//}