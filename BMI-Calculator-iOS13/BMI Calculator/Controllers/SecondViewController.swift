//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Minadeo Robin on 17/07/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController : UIViewController {
    var bmivalue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmivalue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
        
    }
}
