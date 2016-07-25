//
//  ResultsController.swift
//  BMICalculator
//
//  Created by Richard Ni on 2016-07-22.
//  Copyright © 2016 Richard Ni. All rights reserved.
//

import UIKit

class ResultsController: UIViewController {

    @IBOutlet weak var bmiValue: UILabel!
    @IBOutlet weak var bmiDescription: UILabel!
    
    var bmiValueText = String()
    var bmiDescriptionText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiValue.text = bmiValueText
        
        bmiDescription.text = bmiDescriptionText

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
