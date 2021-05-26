//
//  CalcBMIUITests.swift
//  CalcBMIUITests
//
//  Created by Łukasz Nycz on 21/04/2021.
//

import XCTest

class CalcBMIUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    
    
    func testLaunchPerformance() throws {
                if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
//    func testCalcButton() throws {
//        let app = XCUIApplication()
//        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
//        element.children(matching: .other).element(boundBy: 0).children(matching: .textField).element(boundBy: 1).tap()
//        app/*@START_MENU_TOKEN@*/.staticTexts["Oblicz"]/*[[".buttons[\"Oblicz\"].staticTexts[\"Oblicz\"]",".staticTexts[\"Oblicz\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        let predicate = NSPredicate(format: "value contains [c] %@", "BMI to: 200.00")
//        _ = app.descendants(matching: .staticText).matching(predicate).element.exists
//    }
//
