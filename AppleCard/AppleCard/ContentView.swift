//
//  ContentView.swift
//  AppleCard
//
//  Created by Mohammad Azam on 4/27/20.
//  Copyright © 2020 Mohammad Azam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var applyCreditCardVM: ApplyCreditCardViewModel
    
    init() {
        self.applyCreditCardVM = ApplyCreditCardViewModel()
    }
    
    var body: some View {
        
        NavigationView{
            VStack {
                TextField("Enter name", text: self.$applyCreditCardVM.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .accessibility(identifier: "nameTextField")
                
                TextField("Enter SSN", text: self.$applyCreditCardVM.ssn)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .accessibility(identifier: "ssnTextField")
                
                TextField("Enter Date of Birth", text: self.$applyCreditCardVM.dob)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .accessibility(identifier: "dobTextField")
                
                Button("Apply"){
                    self.applyCreditCardVM.apply()
                }.padding(10)
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    .accessibility(identifier: "applyButton")
                
                Text(self.applyCreditCardVM.message)
                    .accessibility(identifier: "messageLabel")
                
                Spacer()
            }.padding()
            
            .navigationBarTitle("Apply for Card")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
