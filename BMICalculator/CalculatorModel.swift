//
//  CalculatorModel.swift
//  BMICalculator
//
//  Created by Richard Ni on 2016-06-20.
//  Copyright © 2016 Richard Ni. All rights reserved.
//

import Foundation

class BMIInformation {
    
    let cm: Double
    let kg: Double
    
    init(cm: Double, kg: Double) {
        self.cm = cm
        self.kg = kg
    }
    
    func computeBMI() -> Double {
        let m = self.cm / 100
        return self.kg / (m * m)
    }
    
}

