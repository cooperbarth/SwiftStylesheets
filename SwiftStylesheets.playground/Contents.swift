import Foundation
import UIKit

// MARK: Selector

// Enum of the types of exposed selectors
enum SelectorType {

    case _id  // Unique selector
    case _class  // Non-unique selector

}

// Class representing a selector
class Selector {

    private let type: SelectorType
    private let name: String

    init(type: SelectorType, name: String) {
        self.type = type
        self.name = name
    }

}

// MARK: Property

// Enum of property names
enum PropertyName {
    case backgroundColor
    case color
    case height
    case margin
    case marginBottom
    case marginLeft
    case marginRight
    case marginTop
    case padding
    case paddingBottom
    case paddingLeft
    case paddingRight
    case paddingTop
    case width
    case x
    case y
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

}

class BackgroundColorProperty: Property {

    init(propertyValue: UIColor) {
        super.init()
        self.propertyName = .backgroundColor
        self.propertyValue = propertyValue
    }

}

class ColorProperty: Property {

    init(propertyValue: UIColor) {
        super.init()
        self.propertyName = .color
        self.propertyValue = propertyValue
    }

}

class HeightProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .height
        self.propertyValue = propertyValue
    }

}

class MarginProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .margin
        self.propertyValue = propertyValue
    }

}

class MarginBottomProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .marginBottom
        self.propertyValue = propertyValue
    }

}

class MarginLeftProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .marginLeft
        self.propertyValue = propertyValue
    }

}

class MarginRightProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .marginRight
        self.propertyValue = propertyValue
    }

}

class MarginTopProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .marginTop
        self.propertyValue = propertyValue
    }

}

class PaddingProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .padding
        self.propertyValue = propertyValue
    }

}

class PaddingBottomProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .paddingBottom
        self.propertyValue = propertyValue
    }

}

class PaddingLeftProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .paddingLeft
        self.propertyValue = propertyValue
    }

}

class PaddingRightProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .paddingRight
        self.propertyValue = propertyValue
    }

}

class PaddingTopProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .paddingTop
        self.propertyValue = propertyValue
    }

}

class WidthProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .width
        self.propertyValue = propertyValue
    }

}

class XPositionProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .x
        self.propertyValue = propertyValue
    }

}

class YPositionProperty: Property {

    init(propertyValue: Number) {
        super.init()
        self.propertyName = .y
        self.propertyValue = propertyValue
    }

}

// MARK: Style

// Represents a single style declaration
// A style usually has many properties and at least one selector
// SwiftStylesheets does not allow for duplicate property names and will use the last declared
class Style {

    private var selectors: [Selector]
    private var properties: [Property]

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

    public func setProperty(propertyName: PropertyName, propertyValue: Any) {
        
    }

}

// MARK: Stylesheet

class Stylesheet {

    private var styles: [Style]

    init() {
        self.styles = []
    }

    init(styles: [Style]) {
        self.styles = styles
    }

}
