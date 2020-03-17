//
//  Stylesheet.swift
//  SwiftStylesheets
//
//  Created by Cooper Barth on 3/17/20.
//  Copyright © 2020 cooperbarth. All rights reserved.
//

class Stylesheet {

    internal var styles: [Style]

    init() {
        self.styles = []
    }

    init(styles: [Style]) {
        self.styles = styles
    }

}
