//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by thinh on 4/14/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    var bmi: BMI?
    mutating func calculatorBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), value: bmiValue, advice: "Ăn nhiều cơm hơn")
        }else if bmiValue < 24.5 {
            bmi = BMI(color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), value: bmiValue, advice: "Chuẩn rồi")
        }else {
            bmi = BMI(color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), value: bmiValue, advice: "Ăn ít lại")
        }
        
    }
    func getBMIValue() -> String {
        return String(format: "%.2f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
    
}
