//
//  imgurUITests.swift
//  imgurUITests
//
//  Created by Ivan Ruiz Monjo on 07/10/17.
//  Copyright © 2017 Ivan Ruiz Monjo. All rights reserved.
//

import XCTest
import Nimble

class imgurUITests: XCTestCase {
    
    var app: XCUIApplication!

    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testFirstScreenShowsExpectedData() {
        let collectionView = app.collectionViews.element(boundBy: 0)
        let title = collectionView.staticTexts["Cat #16"]

        collectionView.scrollToElement(element: title)
        expect(title.exists).to(beTrue())

    }
    
    func testShowsCorrectTitle() {
        let cats = app.navigationBars.staticTexts["Cats"]
        expect(cats.exists).to(beTrue())
    }
    
}

extension XCUIElement {
    func scrollToElement(element: XCUIElement) {
        while !element.visible() {
            swipeUp()
        }
    }
    
    func visible() -> Bool {
        return self.exists
        guard self.exists && !self.frame.isEmpty else { return false }
        return XCUIApplication().windows.element(boundBy: 0).frame.contains(self.frame)
    }
}
