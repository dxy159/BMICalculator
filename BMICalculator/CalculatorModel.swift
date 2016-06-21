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

func convertImperialHeightToMetricHeight(info: BMIInformation) -> Double {
    
    let heightInInches = (info.feet * 12) + info.inches
    let meters = heightInInches * 0.0254
    return meters
    
}

func convertImperialWeightToMetricWeight(info: BMIInformation) -> Double {
    
       return info.pounds * 0.453592
    
}

func computeBMI(kilos: Double, meters: Double) -> Double {
    return kilos / (meters * meters)
}