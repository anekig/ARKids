//
//  MainScreen.swift
//  ARKidsUITests
//
//  Created by Kate Antonova on 10/12/2019.
//  Copyright © 2019 Victor Sobolev. All rights reserved.
//

import Foundation
import XCTest

class MainScreen: BaseScreen {
    
    var gardenerCell: XCUIElement {
        return app.tables.cells.element(boundBy: 0)
    }
    
}
