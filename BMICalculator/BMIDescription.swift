//
//  File.swift
//  BMICalculator
//
//  Created by Richard Ni on 2016-07-24.
//  Copyright © 2016 Richard Ni. All rights reserved.
//

import Foundation

enum WeightClass {
    case Underweight
    case NormalWeight
    case OverWeight
    case Obese
    case ExtremelyObese
}

extension WeightClass {
    var description: String {
        switch self {
        case .Underweight: return "It looks like you're a little underweight. Make sure you're eating enough and getting all of the essential nutrients!"
        case .NormalWeight: return "You are in perfect shape! Keep up your healthy lifestyle!"
        case .OverWeight: return "It looks like you are a little overweight. Nothing that exercise and a healthy diet can't fix!"
        case .Obese: return "Maybe it's time to sort out a healthy diet plan. Time for some exercise motivation!"
        case .ExtremelyObese: return "Uh Oh! Please consult your doctor to work out a plan for a healthy living lifestyle as soon as possible!"
        }
    }
}