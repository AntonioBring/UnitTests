//
//  UnderAgeApplyingCardSteps.swift
//  AppleCardAcceptanceTests
//
//  Created by António Sobrinho on 05/04/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation
import Cucumberish
import XCTest

class UnderAgeApplyingCardSteps {
    func run(){
        Given("the following user information"){ args, userInfo in
            XCUIApplication().launch()
            
            let rows: NSArray = userInfo?["DataTable"] as! NSArray
            for index in 1..<rows.count {
                let data = (rows[index] as! NSArray)
                
                let name = data[0] as! String
                let ssn = data[1] as! String
                let dob = data[2] as! String
                
                let nameTextField = XCUIApplication().textFields["nameTextField"]
                nameTextField.tap()
                nameTextField.typeText(name)
                
                let ssnTextField = XCUIApplication().textFields["ssnTextField"]
                ssnTextField.tap()
                ssnTextField.typeText(ssn)
                
                let dobTextField = XCUIApplication().textFields["dobTextField"]
                dobTextField.tap()
                dobTextField.typeText(dob)
            }
        }
        
        When("I press the apply button"){ _, _ in
            XCUIApplication().buttons["applyButton"].tap()
        }
        
        Then("I should get a rejection message"){ _, _ in
            let messageLabel = XCUIApplication().staticTexts["messageLabel"]
            
            XCTAssertEqual("Denied: Underage", messageLabel.label)
        }
    }
}
