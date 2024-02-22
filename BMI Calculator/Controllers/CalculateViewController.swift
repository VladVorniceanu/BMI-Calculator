//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
        
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let currentHeight: Float = sender.value;
        heightLabel.text = String(format: "%.1fm", currentHeight);
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let currentWeight: Int = Int(sender.value);
        weightLabel.text = "\(currentWeight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        //Varianta de a declansa o un nou view controller din cod
//        //Declar un nou viewController cu clasa facuta de mine in SecondViewController
//        let secondVC = ResultViewController()
//        secondVC.bmiValue = String(format: "%.1f", BMI)
//        self.present(secondVC, animated: true, completion: nil)
        
        //declansez Segue-ul care face tranzitia la urmatorul view
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.bkgColor = calculatorBrain.getColor() 
        }
    }
}
