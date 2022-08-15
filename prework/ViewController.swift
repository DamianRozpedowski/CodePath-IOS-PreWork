//
//  ViewController.swift
//  prework
//
//  Created by Damian Rozpedowski on 7/30/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var partyControl: UIStepper!
    
    @IBOutlet weak var partyText: UILabel!
    
    
    @IBOutlet weak var pppLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"

    }

    @IBAction func totalLabel(_ sender: Any) {
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip Amount Label
        tipAmountLabel.text=String(format:"$%.2f",tip)
        //Update Total Amount
        totalLabel.text=String(format:"$%.2f",total)
    }
    

    @IBAction func typeText(_ sender: Any) {
        totalLabel.text = billAmountTextField.text
    }
}

