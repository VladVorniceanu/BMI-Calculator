//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Vlad Vorniceanu on 21.02.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var bmiValue: String?
    var bkgColor: UIColor?
    var advice: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiValueLabel.text = bmiValue
        view.backgroundColor = bkgColor
        adviceLabel.text = advice!
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        //inchidem view-ul curent sa navigam inapoi la view-ul anterior
        self.dismiss(animated: true)
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
