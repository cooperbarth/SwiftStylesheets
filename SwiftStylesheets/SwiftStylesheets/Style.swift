//
//  Style.swift
//  SwiftStylesheets
//
//  Created by Cooper Barth on 3/17/20.
//  Copyright © 2020 cooperbarth. All rights reserved.
//

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

    init(selector: Selector, properties: [Property]) {
        self.selectors = [selector]
        self.properties = properties
    }

    init(selectors: [Selector], properties: [Property]) {
        self.selectors = selectors
        self.properties = properties
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
