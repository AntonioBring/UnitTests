//
//  MockData.swift
//  PedometerAppTests
//
//  Created by António Sobrinho on 05/04/2022.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation
@testable import PedometerApp

struct MockData: PedometerData {
    let steps: Int
    let distanceTravelled: Double
}
