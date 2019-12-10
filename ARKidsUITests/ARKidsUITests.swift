//
//  ARKidsUITests.swift
//  ARKidsUITests
//
//  Created by Kate Antonova on 09/12/2019.
//  Copyright © 2019 Victor Sobolev. All rights reserved.
//

import XCTest

class ARKidsUITests: XCTestCase {
    
    private var app: XCUIApplication!
    private var mainScreen: MainScreen!
    private var profileScreen: ProfileScreen!
    private var marketScreen: MarketScreen!
    
    private var backButton: XCUIElement {
        return app.navigationBars.buttons.firstMatch
    }
    
    override func setUp() {
        continueAfterFailure = false
        
        app = XCUIApplication()
        mainScreen = MainScreen(app: app)
        profileScreen = ProfileScreen(app: app)
        marketScreen = MarketScreen(app: app)
    }

    func testCheckBicycle() {
        app.launch()
        
        mainScreen.gardenerCell.tap()
        profileScreen.marketButton.tap()
        app.swipeUp()
        
        marketScreen.priceButton(price: 300).tap()
        backButton.tap()
        app.swipeUp()
        
        XCTAssertTrue(profileScreen.bicycleLabel.exists)
    }
    
    func testCheckPercent() {
        app.launchArguments = ["UITest"]
        app.launch()
        
        app.tables.cells.element(boundBy: 0).tap()
        profileScreen.marketButton.tap()
        app.swipeUp()
        marketScreen.priceButton(price: 100).tap()
        
        let predicate = NSPredicate(format: "label CONTAINS '25%'")
        XCTAssertTrue(marketScreen.alertMessageLabel(for: predicate).exists)
        
        marketScreen.thanksAlertButton.tap()
        backButton.tap()
        app.swipeUp()
        
        XCTAssertTrue(profileScreen.depositLabel(for: predicate).exists)
    }

}
