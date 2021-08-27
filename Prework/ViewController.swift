//
//  ViewController.swift
//  Prework
//
//  Created by Hew, Vincent on 8/26/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        calculateTip(viewDidLoad())
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
    }
    
    @IBAction func billInput(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Access Defaults data
        let defaults = UserDefaults.standard
        //Get bill amount from text field input
        let bill =  Double(billAmountTextField.text!) ?? 0
        //GetTotal tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2, defaults.double(forKey: "cust")]
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        let total =  bill + tip
        defaults.set(tip, forKey: "tip")
        defaults.set(total, forKey: "total")
        
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

