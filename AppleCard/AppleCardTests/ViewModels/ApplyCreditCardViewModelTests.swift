//
//  ApplyCreditCardViewModelTests.swift
//  AppleCardTests
//
//  Created by António Sobrinho on 05/04/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import XCTest
@testable import AppleCard

class when_credit_card_is_denied_due_to_age: XCTestCase {

    func test_ShouldSetUnderAgeMessageSuccessfully(){
        let applyCreditCardVM = ApplyCreditCardViewModel()
        applyCreditCardVM.name = "Mary Doe"
        applyCreditCardVM.ssn = "123-45-6666"
        applyCreditCardVM.dob = "02-03-2015"
        
        applyCreditCardVM.apply()
        
        XCTAssertEqual(applyCreditCardVM.message, "Denied: Underage")
    }

}
