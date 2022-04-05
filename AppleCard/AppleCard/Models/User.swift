//
//  User.swift
//  AppleCard
//
//  Created by António Sobrinho on 05/04/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation

class User {
    var name: String
    var ssn: String
    var dob: Date
    
    init(name: String, ssn: String, dob: Date){
        self.name = name
        self.ssn = ssn
        self.dob = dob
    }
}

extension User {
    var isEligible: Bool {
        let components = Calendar.current.dateComponents([.year], from: dob, to: Date())
        
        if let year = components.year{
            return year >= 18
        }
        
        return false
    }
}
