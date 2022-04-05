//
//  UserTests.swift
//  AppleCardTests
//
//  Created by António Sobrinho on 05/04/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import XCTest
@testable import AppleCard

class when_18_or_above_person_applies_for_credit_card: XCTestCase {

    func test_should_make_sure_user_is_eligible(){
        let dob = Calendar.current.date(byAdding: .year, value: -20, to: Date())
        let user = User(name: "John Doe", ssn: "123-44-5555", dob: dob!)
        
        XCTAssertTrue(user.isEligible)
    }

}

class when_a_user_less_than_18_years_apply_for_credit_card : XCTestCase {

    func test_should_deny_the_card(){
        let dob = Calendar.current.date(byAdding: .year, value: -10, to: Date())
        let user = User(name: "John Doe", ssn: "123-44-5555", dob: dob!)
        
        XCTAssertFalse(user.isEligible)
    }

}
