//
//  MarketScreen.swift
//  ARKidsUITests
//
//  Created by Kate Antonova on 10/12/2019.
//  Copyright © 2019 Victor Sobolev. All rights reserved.
//

import Foundation
import XCTest

class MarketScreen: BaseScreen {
    
    var thanksAlertButton: XCUIElement {
        return app.buttons["Thanks!"]
    }
    
    func priceButton(price: Int) -> XCUIElement {
        return app.cells["productCell"].buttons["\(price) $"]
    }
    
    func alertMessageLabel(for predicate: NSPredicate) -> XCUIElement {
        return app.staticTexts.containing(predicate).firstMatch
    }

}
