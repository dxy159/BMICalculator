//
//  ViewController.swift
//  BMICalculator
//
//  Created by Richard Ni on 2016-06-19.
//  Copyright © 2016 Richard Ni. All rights reserved.
//

import UIKit

extension Double {
    /// Rounds the double to decimal places value
    func roundToPlaces(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return round(self * divisor) / divisor
    }
}


class ViewController: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    
    @IBOutlet weak var weightConstraint: NSLayoutConstraint!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.tap(_:)))
        view.addGestureRecognizer(tapGesture)
        }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "computeBMI" {
            
            if let results = segue.destinationViewController as? ResultsController {
                
                if (heightTextField.text == "") || (weightTextField.text == "") {
                    
                    let alert = UIAlertController(title: "Wait up!", message: "It looks like you didn't enter your information correctly.", preferredStyle: .Alert)
                    let action = UIAlertAction(title: "Ok", style: .Default, handler: nil)
                    
                    alert.addAction(action)
                    
                    presentViewController(alert, animated: true, completion: nil)
                    
                } else {
                
                    if let height = Double(heightTextField.text!), weight = Double(weightTextField.text!) {
                        
                        let info = BMIInformation(cm: height, kg: weight)
                        let bmi = info.computeBMI().roundToPlaces(1)
                        results.bmiValueText = String(bmi)
                        
                        if (bmi < 18.5) {
                            results.bmiDescriptionText = WeightClass.Underweight.description
                        } else if (bmi >= 18.5 && bmi < 25.0) {
                            results.bmiDescriptionText = WeightClass.NormalWeight.description
                        } else if (bmi >= 25.0 && bmi < 30.0) {
                            results.bmiDescriptionText = WeightClass.OverWeight.description
                        } else if (bmi >= 30.0 && bmi < 35.0) {
                            results.bmiDescriptionText = WeightClass.Obese.description
                        } else {
                            results.bmiDescriptionText = WeightClass.ExtremelyObese.description
                        }
                    }
                }
            }
        }
    }
    
    func tap(gesture: UITapGestureRecognizer) {
        heightTextField.resignFirstResponder()
        weightTextField.resignFirstResponder()
    }
    
    
}

