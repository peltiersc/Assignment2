//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var enterField: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    var runningTotal = 0
    
    @IBAction func addButtonAction(AnyObject) {
        
        var enterFieldasInt = enterField.text.toInt() ?? 0
        
        var newTotal = runningTotal + enterFieldasInt
        
        outputLabel.text = String(newTotal)
        
        runningTotal = newTotal
        
    }
}

    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
