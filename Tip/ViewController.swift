//
//  ViewController.swift
//  Tip
//
//  Created by Aaron Lieberman on 8/14/20.
//  Copyright © 2020 Aaron Lieberman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var settingsButton: UIBarButtonItem!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(false)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercent = Double((tipSlider.value * 100).rounded() / 100)
        let tip = bill * tipPercent
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        tipPercentageLabel.text = String(format: "%.0f%%", tipPercent * 100)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

