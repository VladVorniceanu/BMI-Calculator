//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Vlad Vorniceanu on 21.02.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 && bmiValue>0.0 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.init(red: 0.392, green: 0.657, blue: 0.898, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as Arnold!", color: UIColor.init(red: 0.466, green: 0.905, blue: 0.690, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.init(red: 0.902, green: 0.435, blue: 0.514, alpha: 1))
        }
    }
    
    func getAdvice()->String {
        return bmi?.advice ?? "No advice for you today!"
    }
    
    func getColor()->UIColor {
        return bmi?.color ?? UIColor.clear
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
}
