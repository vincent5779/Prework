//
//  SettingViewController.swift
//  Prework
//
//  Created by Hew, Vincent on 8/26/21.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var customTipAmount: UILabel!
    @IBOutlet weak var tipAmountSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func AmountSlider(_ sender: Any) {
        let tipPercentage = Int(tipAmountSlider.value)
        customTipAmount.text = String(format: "%d%%", tipPercentage)
    }
    
    func getCustomPercentage()-> Double {
        print(tipPercentage)
        let percent = Double(tipPercentage) / 100
        return percent
    }
}
