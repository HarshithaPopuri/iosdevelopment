//
//  ViewController.swift
//  ios-internship project
//
//  Created by APPLE on 14/10/22.
//

import UIKit

class ViewController: UIViewController {
    var numberOnScreen : Double = 0
    var previousNumber : Double = 0
    var performMathOp = false
    var operation = 0
    
    
    @IBOutlet weak var calcLabel: UILabel!
    
    
    @IBAction func operatorBtn(_ sender: UIButton)
    {
        if calcLabel .text != "" && sender.tag != 16 && sender.tag != 15
        {
            previousNumber = Double(calcLabel.text!)!
            switch sender.tag
            {
            case 11://addition
                calcLabel.text = "+"
            case 12:// sub
                calcLabel.text = "-"
            case 13://div
                calcLabel.text = "/"
            case 14://mul
                calcLabel.text = "*"
            default:
                calcLabel.text = "+"
            }
            operation = sender.tag
            performMathOp = true
        }
        
    }
    @IBAction func operandBtn(_ sender: UIButton)
    {
        if performMathOp == true
        {
            calcLabel.text = String(sender.tag-1)
            numberOnScreen = Double(calcLabel.text!)!
            performMathOp = false
            
        }
        else
        {
            calcLabel.text = calcLabel.text! + String(sender.tag-1)
            numberOnScreen = Double(calcLabel.text!)!
        }
    }
    @IBAction func equalTo(_ sender: Any)
    {
        switch operation
        {
        case 11://add
            calcLabel.text = String(previousNumber + numberOnScreen)
        case 12://sub
            calcLabel.text = String(previousNumber - numberOnScreen)
        case 13://div
            calcLabel.text = String(previousNumber / numberOnScreen)
        case 14://mul
            calcLabel.text = String(previousNumber * numberOnScreen)
        default:
            calcLabel.text = String(previousNumber + numberOnScreen)
            
        }
    }
    
    @IBAction func clearBtn(_ sender: UIButton)
    {
        if sender.tag == 16// clearBtn
        {
            calcLabel.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

