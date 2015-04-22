//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var btnGenerateText: UIButton!
    @IBOutlet weak var lblPlaceholderText: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    
    @IBOutlet weak var todoTwoButton: UIButton!
    @IBOutlet weak var todoThreeButton: UIButton!
    @IBOutlet weak var todoFourButton: UIButton!
    
    
    @IBAction func btnGenerateText(AnyObject) {
        
        lblPlaceholderText.text = "Hello World!"
    }
    
    @IBAction func todoTwoButton(AnyObject) {
        
        var name = nameField
        var age = ageField
        
        var greeting:String = "Hello, \(name.text) you are \(age.text) years old"
        
        lblPlaceholderText.text = greeting
        
        }
    
    @IBAction func todoThree(AnyObject) {
        
        var ageFieldAsInt = ageField.text.toInt() ?? 0
        
        if ageFieldAsInt >= 21 {
            
        lblPlaceholderText.text = "You can drink"
        
        }
        
        else if ageFieldAsInt >= 18 {
            
            lblPlaceholderText.text = "You can smoke"
        
            }
        
        else if ageFieldAsInt >= 16 {
                
             lblPlaceholderText.text = "You can drive"
            
            }
    }
    
    @IBAction func todoFour(AnyObject) {
        
        var ageFieldAsInt = ageField.text.toInt() ?? 0
        
        if ageFieldAsInt >= 21 {
            
            lblPlaceholderText.text = "You can drive, vote and drink (but not at the same time!"
            
        }
            
        else if ageFieldAsInt >= 18 && ageFieldAsInt < 21 {
            
            lblPlaceholderText.text = "You can drive and vote"
            
        }
            
        else if ageFieldAsInt >= 16 {
            
            lblPlaceholderText.text = "You can drive"
            
        }
    }
}











