//
//  CalculatorModel.swift
//  BMICalculator
//
//  Created by Richard Ni on 2016-06-20.
//  Copyright © 2016 Richard Ni. All rights reserved.
//

import Foundation

struct BMIInformation {
    
    let feet: Double
    let inches: Double
    let pounds: Double
    
}


func computeBMI(info: BMIInformation) -> Double {
    let kilos = info.pounds * 0.453592
    let meters = ((info.feet * 12) + info.inches) * (0.0254)
    return kilos / (meters * meters)
}