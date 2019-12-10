//
//  ProfileScreen.swift
//  ARKidsUITests
//
//  Created by Kate Antonova on 10/12/2019.
//  Copyright © 2019 Victor Sobolev. All rights reserved.
//

import Foundation
import XCTest

class ProfileScreen: BaseScreen {
    
    var marketButton: XCUIElement {
        return app.buttons["marketButton"]
    }
    
    var bicycleLabel: XCUIElement {
        return app.cells["productCell"].staticTexts["Bicycle"]
    }
    
    func depositLabel(for predicate: NSPredicate) -> XCUIElement {
        return app.cells.staticTexts.containing(predicate).firstMatch
    }
    
}
