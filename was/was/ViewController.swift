//
//  ViewController.swift
//  was
//
//  Created by APPLE on 07/10/22.
//

import UIKit

class ViewController: UIViewController
{
    var numberOnScreen: Double=0
    var previousNumber: Double=0
    var performMathOP = false
    var operation = 0
    
    
    @IBOutlet weak var calcLabel: UILabel!
    
    
    @IBAction func operatorBtn(_ sender: UIButton)
    {
        if calcLabel.text != "" && sender.tag != 15 && sender.tag != 16
        {
            previousNumber = Double(calcLabel.text!)!
            
            if sender.tag == 11 //addition
            {
                calcLabel.text = "+"
            }
            else if sender.tag == 12 //substraction
            {
                calcLabel.text = "-"
            }
            else if sender.tag == 13 //division
            {
                calcLabel.text = "/"
            }
            else if sender.tag == 14 //multiplication
            {
                calcLabel.text = "*"
            }
            operation = sender.tag
            performMathOP = true
        }
        else if sender.tag == 15 // equal to
        {
            if operation == 11 //add operation
            {
                calcLabel.text = String(previousNumber + numberOnScreen)
            }
            else if operation == 12//sub operation
            {
                calcLabel.text = String (previousNumber - numberOnScreen)
            }
            else if operation == 13//div operation
            {
                calcLabel.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 14// mul operation
            {
                calcLabel.text = String(previousNumber * numberOnScreen)
                
            }
        }
        else if sender.tag == 16 // clear Button
        {
            calcLabel.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
            
        }
    }
    
    
    @IBAction func operandBtn(_ sender: UIButton)
    {
        if performMathOP == true
        {
            calcLabel.text = String(sender.tag - 1)
            numberOnScreen = Double(calcLabel.text!)!
            performMathOP = false
            
        }
        else
        {
            calcLabel.text! = calcLabel.text! + String(sender.tag - 1)
            numberOnScreen = Double(calcLabel.text!)!
        }
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

