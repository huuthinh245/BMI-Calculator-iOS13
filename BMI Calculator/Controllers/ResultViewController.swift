//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by thinh on 4/13/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var color: UIColor?
    var advice: String?
    @IBOutlet weak var lblBmi: UILabel!
    @IBOutlet weak var lblAdvice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblBmi.text = bmiValue
        view.backgroundColor = color
        lblAdvice.text = advice

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
