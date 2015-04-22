//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    @IBOutlet weak var numberInput: UITextField!
    
    @IBOutlet weak var calculateButton: UIButton!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    
    @IBAction func evenOrOdd(AnyObject) {
        
        var numberInputAsInt = numberInput.text.toInt() ?? 0
        
        var remainder: Int = numberInputAsInt % 2
        
        if remainder == 1 {
            
            outputLabel.text = "Not Even"
        }
        
        else if remainder == 0 {
            
            outputLabel.text = "Even"
        }
    }
    
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
}
