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
    @IBAction func calculateTip(_ sender: UIButton) {
        var tipPercent = 0.15
        var billAmount : Double? {
            if let amount = billAmountTextField.text {
                return Double(amount)
            } else {
                return Double("0.00")
            }
        }
        let withTip = billAmount! * (tipPercent + 1)
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

