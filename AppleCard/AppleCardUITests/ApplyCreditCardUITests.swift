//
//  ApplyCreditCardUITests.swift
//  AppleCardUITests
//
//  Created by António Sobrinho on 05/04/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import XCTest

class when_under_18_user_applies_for_credit_card: XCTestCase {

    private var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        self.app = XCUIApplication()
        self.app.launch()
    }
    
    func test_should_see_a_denied_message_on_the_screen(){
        let nameTextField = self.app.textFields["nameTextField"]
        nameTextField.tap()
        nameTextField.typeText("ABC")
        
        let ssnTextField = self.app.textFields["ssnTextField"]
        ssnTextField.tap()
        ssnTextField.typeText("123-44-5555")
        
        let dobTextField = self.app.textFields["dobTextField"]
        dobTextField.tap()
        dobTextField.typeText("01/02/2015")
        
        self.app.buttons["applyButton"].tap()
        
        let messageLabel = self.app.staticTexts["messageLabel"]
        
        XCTAssertEqual("Denied: Underage", messageLabel.label)
    }
}
