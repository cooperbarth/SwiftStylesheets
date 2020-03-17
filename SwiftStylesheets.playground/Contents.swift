import Foundation
import UIKit

// MARK: Selector

// Enum of the types of exposed selectors
enum SelectorType {

    case id

}

// Class representing a selector
class Selector: Equatable {

    internal let type: SelectorType
    internal let name: String

    init(type: SelectorType, name: String) {
        self.type = type
        self.name = name
    }

    static func == (lhs: Selector, rhs: Selector) -> Bool {
        return lhs.type == rhs.type && lhs.name == rhs.name
    }

}

// MARK: Property

// Enum of property names
enum PropertyName {
    case backgroundColor
    case display
    case height
    case margin
    case marginBottom
    case marginLeft
    case marginRight
    case marginTop
    case width
    case x
    case y
}

enum Display {
    case hidden
    case visible
}

// Define the Number type, which can be a Double, Float, or Int
protocol Number {}
extension Double: Number {}
extension Float: Number {}
extension Int: Number {}

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

// MARK: Style

// Represents a single style declaration
// A style usually has many properties and at least one selector
// SwiftStylesheets does not allow for duplicate property names and will use the last declared
class Style {

    internal var selectors: [Selector]
    internal var properties: [Property]

    init() {
        self.selectors = []
        self.properties = []
    }

    init(selectors: [Selector], properties: [Property]) {
        self.selectors = selectors
        self.properties = properties

        // Check for duplicate property names
    }

    public func addProperty(property: Property) {
        // Check for duplicate property names
        // Check if the property already exists

        self.properties.append(property)
    }

    public func removeProperty(propertyName: PropertyName) {
        self.properties = self.properties.filter {$0.propertyName != propertyName}
    }

}

// MARK: Stylesheet

// Represents a Stylesheet, or a set of styles
class Stylesheet {

    internal var styles: [Style]

    init() {
        self.styles = []
    }

    init(styles: [Style]) {
        self.styles = styles
    }

}

// MARK: UIView Extension

extension UIView {

    // Struct to contain private stored properties
    private struct storedProperties {
        static var _selectors: [Selector] = []
    }

    var selectors: [Selector] {
        get {
            return storedProperties._selectors
        }
    }

    // Adds the specified properties to a view
    private func applyProperties(properties: [Property]) {
        for property in properties {
            property.applyTo(element: self)
        }
    }

    // Checks whether a view matches all of a style's selector(s)
    private func matchSelectors(selectors: [Selector]) -> Bool {
        for selector in selectors {
            if !self.selectors.contains(selector) {
                return false
            }
        }
        return true
    }

    // Traverses DOM and calls applyStyles on each node
    func applyStylesheet(stylesheet: Stylesheet) {
        // Apply properties for matching styles
        for style in stylesheet.styles {
            if (matchSelectors(selectors: style.selectors)) {
                applyProperties(properties: style.properties)
            }
        }

        // Recurse on subviews
        for subview in self.subviews {
            subview.applyStylesheet(stylesheet: stylesheet)
        }
    }

}

// MARK: Sample Code


