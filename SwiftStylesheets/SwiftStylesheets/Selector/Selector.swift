//
//  Selector.swift
//  SwiftStylesheets
//
//  Created by Cooper Barth on 3/17/20.
//  Copyright © 2020 cooperbarth. All rights reserved.
//

class Selector: Equatable {

    internal let type: SelectorType
    internal let name: String

    init(name: String) {
        self.type = .id
        self.name = name
    }

    init(type: SelectorType, name: String) {
        self.type = type
        self.name = name
    }

    static func == (lhs: Selector, rhs: Selector) -> Bool {
        return lhs.type == rhs.type && lhs.name == rhs.name
    }

}
