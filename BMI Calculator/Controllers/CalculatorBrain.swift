//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by user on 6/9/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation


struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiCal = weight / pow(height, 2)
        
        if bmiCal < 18.5 {
            bmi = BMI(value: bmiCal, advice: "Eat more Pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiCal < 24.9 {
            bmi = BMI(value: bmiCal, advice: "You are healthy", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: bmiCal, advice: "Eat less and run more", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        }        
    }
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
}
