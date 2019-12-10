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
        continueAfterFailure = false
    }

    func testCheckBicycle() {
        let app = XCUIApplication()
        app.launch()
        
        app.tables.cells.element(boundBy: 0).tap()
        app.buttons["marketButton"].tap()
        app.swipeUp()
        app.cells["productCell"].buttons["300 $"].tap()
        app.buttons["Profile"].tap()
        app.swipeUp()
        XCTAssertTrue(app.cells["productCell"].staticTexts["Bicycle"].exists)
    }
    
    func testCheckProcent() {
        let app = XCUIApplication()
        app.launchArguments = ["UITest"]
        app.launch()
        
        app.tables.cells.element(boundBy: 0).tap()
        app.buttons["marketButton"].tap()
        app.swipeUp()
        let predicate = NSPredicate(format: "label CONTAINS '25%'")
        app.cells["productCell"].buttons["100 $"].tap()
        XCTAssertTrue(app.staticTexts.containing(predicate).firstMatch.exists)
        app.buttons["Thanks!"].tap()
        app.buttons["Profile"].tap()
        app.swipeUp()
        let createAccountText = app.cells.staticTexts.containing(predicate).firstMatch
        XCTAssertTrue(createAccountText.exists)
    }

}
