//
//  ViewController.swift
//  BMICalculator
//
//  Created by Richard Ni on 2016-06-19.
//  Copyright © 2016 Richard Ni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var feetTextField: UITextField!
    @IBOutlet weak var inchesTextField: UITextField!
    @IBOutlet weak var poundsTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        descriptionLabel.text = "Please enter your information below to calculate your BMI."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "computeBMI" {
            
            if let feet = Double(feetTextField.text!), let inches = Double(inchesTextField.text!), let pounds = Double(poundsTextField.text!) {
                
                if let resultsController = segue.destinationViewController as? ResultsController {
                    let userInfo = BMIInformation(feet: feet, inches: inches, pounds: pounds)
                    resultsController.valueOfBMI.text = String(computeBMI(userInfo))
                    if computeBMI(userInfo) <= 18.0 {
                        resultsController.descriptionOfBMI.text = "Skinny"
                    } else if computeBMI(userInfo) > 18.0 && computeBMI(userInfo) < 30.0 {
                        resultsController.descriptionOfBMI.text = "Normal Weight"
                    } else {
                        resultsController.descriptionOfBMI.text = "Fat"
                    }

                }

            } else {
                let alertController = UIAlertController(title: "Invalid Information", message: "Please provide correct information", preferredStyle: .Alert)
                let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
                
                alertController.addAction(action)
                
                presentViewController(alertController, animated: true, completion: nil)
            }
        }
    }



}

