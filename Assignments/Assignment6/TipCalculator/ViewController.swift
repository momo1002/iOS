//
//  ViewController.swift
//  TipCalculator
//
//  Created by Momoko Nakada on 2017-11-16.
//  Copyright © 2017 Momoko Nakada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageTextField: UITextField!
    
    @IBAction func calculateTip(_ sender: UIButton) {
        var tipPercentage : Double? {
            if let tip = tipPercentageTextField.text {
                return Double(tip)! / 100
            } else {
                return 0
            }
        }
        var billAmount : Double? {
            if let amount = billAmountTextField.text {
                return Double(amount)
            } else {
                return 0.00
            }
        }
        
        let withTip = billAmount! * (tipPercentage! + 1)
        tipAmountLabel.text = "\(withTip)"
    }
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func disappearKeyboard(_ sender: UITextField) {
        tipAmountLabel.text = sender.text
    }
    

}

