//
//  SwiftStylesheets.swift
//  SwiftStylesheets
//
//  Created by Cooper Barth on 3/17/20.
//  Copyright © 2020 cooperbarth. All rights reserved.
//

import UIKit

class SwiftStylesheets {}

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
