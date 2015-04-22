//
//  FourthViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var numberEntry: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var calculateButton: UIButton!
    
    var indexOfFibonacciNumber = 0
    
    @IBAction func calculateButton(sender: AnyObject) {
        
        let fibonacciAdder = FibonacciAdder()
        
        var numberEntryAsInt = numberEntry.text.toInt() ?? 0
        var result = fibonacciAdder.fibonacciNumberAtIndex(numberEntryAsInt)
        
        outputLabel.text = String(result)
        
    }
    
}

class FibonacciAdder: NSObject {
    
    func fibonacciNumberAtIndex(indexOfFibonacciNumber:Int) ->Int {
        
        if indexOfFibonacciNumber == 0 {
            return 0
        }
        
        if indexOfFibonacciNumber == 1 {
            return 1
        }
        
        let a = fibonacciNumberAtIndex(indexOfFibonacciNumber - 1)
        let b = fibonacciNumberAtIndex(indexOfFibonacciNumber - 2)
        
       return a + b
    }
}

/*
    TODO seven: Create a ‘fibonacci adder’ class with a method ‘fibonacciNumberAtIndex' which takes indexOfFibonacciNumber (an integer).  

When the button is pressed, create an instance of that class, call the method, and print out the appropriate fibonacci number of an inputted integer.

    The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number.
*/

