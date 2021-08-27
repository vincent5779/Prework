//
//  SettingsViewController.swift
//  Prework
//
//  Created by Hew, Vincent on 8/27/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var custTipAmount: UILabel!
    @IBOutlet weak var sliderAmount: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeTipAmount(_ sender: Any) {
        //Access Defaults data
        let defaults = UserDefaults.standard
        //Update the customized tip amount
        let tipPercent = sliderAmount.value/100
        custTipAmount.text = String(format: "%.1f%%", sliderAmount.value)
        //Save the custom tip amount data
        defaults.set(tipPercent, forKey: "cust")
        defaults.synchronize()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
