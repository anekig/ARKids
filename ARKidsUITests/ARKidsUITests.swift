//
//  ARKidsUITests.swift
//  ARKidsUITests
//
//  Created by Kate Antonova on 09/12/2019.
//  Copyright © 2019 Victor Sobolev. All rights reserved.
//

import XCTest

class ARKidsUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCheckBicycle() {
        let app = XCUIApplication()
        app.tables.cells.element(boundBy: 0).tap()
        app.buttons.matching(identifier: "marketButton").firstMatch.tap()
        app.swipeUp()
        app.buttons["300 $"].tap()
        app.buttons["Profile"].tap()
        app.swipeUp()
        XCTAssertTrue(app.staticTexts["Bicycle"].exists)
    }
    
    func testCheckProcent() {
        let app = XCUIApplication()
        app.launchArguments = ["UITest"]
        app.tables.cells.element(boundBy: 0).tap()
        app.buttons.matching(identifier: "marketButton").firstMatch.tap()
        app.swipeUp()
        app.buttons["100 $"].tap()
        XCTAssertTrue(app.staticTexts["You've just invested in the 25% deposit"].exists)
        app.buttons["Thanks"].tap()
        app.buttons["Profile"].tap()
        app.swipeUp()
        XCTAssertTrue(app.label.contains("25%"))
    }

}
