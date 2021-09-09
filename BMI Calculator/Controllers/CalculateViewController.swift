//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightChange(_ sender: UISlider) {
        lblHeight.text = "\(String(format: "%.2f", sender.value)) m"
    }
    
    @IBAction func weightChange(_ sender: UISlider) {
        lblWeight.text = "\(String(Int(sender.value))) kg"
    }
    @IBAction func calculatorPressed(_ sender: Any) {
        let weight =  weightSlider.value
        let height = heightSlider.value
        calculatorBrain.calculatorBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        /*
         navigation without use storeboard
         let secondVC = SecondViewController()
         secondVC.bmiValue = String(format: "%.1f", bmi)
         self.present(secondVC, animated: true, completion: nil)
         */
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}

