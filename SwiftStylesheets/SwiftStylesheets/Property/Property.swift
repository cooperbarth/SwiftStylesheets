//
//  Property.swift
//  SwiftStylesheets
//
//  Created by Cooper Barth on 3/17/20.
//  Copyright © 2020 cooperbarth. All rights reserved.
//

import UIKit

// Abstract class from which properties inherit
class Property {

    var propertyName: PropertyName? = nil
    var propertyValue: Any? = nil

    func applyTo(element: UIView) {}

}

class BackgroundColorProperty: Property {

    init(propertyValue: UIColor) {
        super.init()
        self.propertyName = .backgroundColor
        self.propertyValue = propertyValue
    }

    override func applyTo(element: UIView) {
        element.backgroundColor = self.propertyValue as? UIColor
    }

}

class DisplayProperty: Property {

    init(propertyValue: Display) {
        super.init()
        self.propertyName = .display
        self.propertyValue = propertyValue
    }

    override func applyTo(element: UIView) {
        if self.propertyValue == nil { return }
        element.isHidden = self.propertyValue as! Display == .hidden
    }

}

class HeightProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .height
        self.propertyValue = propertyValue
    }

    override func applyTo(element: UIView) {
        element.addConstraint(
            NSLayoutConstraint(item: element,
                               attribute: .height,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .notAnAttribute,
                               multiplier: 1,
                               constant: self.propertyValue as! CGFloat))
    }

}

class MarginProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .margin
        self.propertyValue = propertyValue
    }

    override func applyTo(element: UIView) {
        element.addConstraint(
            NSLayoutConstraint(item: element,
                               attribute: .bottomMargin,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .notAnAttribute,
                               multiplier: 1,
                               constant: self.propertyValue as! CGFloat))
        element.addConstraint(
            NSLayoutConstraint(item: element,
                               attribute: .leftMargin,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .notAnAttribute,
                               multiplier: 1,
                               constant: self.propertyValue as! CGFloat))
        element.addConstraint(
            NSLayoutConstraint(item: element,
                               attribute: .rightMargin,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .notAnAttribute,
                               multiplier: 1,
                               constant: self.propertyValue as! CGFloat))
        element.addConstraint(
            NSLayoutConstraint(item: element,
                               attribute: .topMargin,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .notAnAttribute,
                               multiplier: 1,
                               constant: self.propertyValue as! CGFloat))
    }

}

class MarginBottomProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .marginBottom
        self.propertyValue = propertyValue
    }

    override func applyTo(element: UIView) {
        element.addConstraint(
            NSLayoutConstraint(item: element,
                               attribute: .bottomMargin,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .notAnAttribute,
                               multiplier: 1,
                               constant: self.propertyValue as! CGFloat))
    }

}

class MarginLeftProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .marginLeft
        self.propertyValue = propertyValue
    }

    override func applyTo(element: UIView) {
        element.addConstraint(
            NSLayoutConstraint(item: element,
                               attribute: .leftMargin,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .notAnAttribute,
                               multiplier: 1,
                               constant: self.propertyValue as! CGFloat))
    }

}

class MarginRightProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .marginRight
        self.propertyValue = propertyValue
    }

    override func applyTo(element: UIView) {
        element.addConstraint(
            NSLayoutConstraint(item: element,
                               attribute: .rightMargin,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .notAnAttribute,
                               multiplier: 1,
                               constant: self.propertyValue as! CGFloat))
    }

}

class MarginTopProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .marginTop
        self.propertyValue = propertyValue
    }

    override func applyTo(element: UIView) {
        element.addConstraint(
            NSLayoutConstraint(item: element,
                               attribute: .topMargin,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .notAnAttribute,
                               multiplier: 1,
                               constant: self.propertyValue as! CGFloat))
    }

}

class WidthProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .width
        self.propertyValue = propertyValue
    }

    override func applyTo(element: UIView) {
        element.addConstraint(
            NSLayoutConstraint(item: element,
                               attribute: .width,
                               relatedBy: .equal,
                               toItem: nil,
                               attribute: .notAnAttribute,
                               multiplier: 1,
                               constant: self.propertyValue as! CGFloat))
    }

}

class XPositionProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .x
        self.propertyValue = propertyValue
    }

    override func applyTo(element: UIView) {
        element.addConstraint(
        NSLayoutConstraint(item: element,
                           attribute: .centerX,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1,
                           constant: self.propertyValue as! CGFloat))
    }

}

class YPositionProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .y
        self.propertyValue = propertyValue
    }

    override func applyTo(element: UIView) {
        element.addConstraint(
        NSLayoutConstraint(item: element,
                           attribute: .centerY,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1,
                           constant: self.propertyValue as! CGFloat))
    }

}
