//
// Created by Dani Postigo on 9/30/16.
//

import Foundation
import UIKit
import Handy

public class BaseTableViewCell: UITableViewCell {

    let title = UILabel(title: "Title")
    let subtitle = UILabel(title: "Subtitle")
    let _imageView = UIImageView()

    override public var imageView: UIImageView? {
        return self._imageView
    }
    override public var textLabel: UILabel? {
        return self.title
    }
    override public var detailTextLabel: UILabel? {
        return self.title
    }

}