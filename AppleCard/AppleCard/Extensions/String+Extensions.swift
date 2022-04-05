//
//  String+Extensions.swift
//  AppleCard
//
//  Created by António Sobrinho on 05/04/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation

extension String {
    func toDate() -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en-US")
        dateFormatter.dateFormat = "MM-dd-yyyy"
        return dateFormatter.date(from: self)!
    }
}
