//
//  ApplyCreditCardViewModel.swift
//  AppleCard
//
//  Created by António Sobrinho on 05/04/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation

class ApplyCreditCardViewModel : ObservableObject{
    var name: String = ""
    var ssn: String = ""
    var dob: String = ""
    
    @Published var message: String = ""
    
    private var user: User{
        return User(name: self.name, ssn: self.ssn, dob: self.dob.toDate())
    }
    
    func apply(){
        if !user.isEligible {
            self.message = "Denied: Underage"
        }
    }
}
