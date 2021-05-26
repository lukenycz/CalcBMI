//
//  TipViewController.swift
//  CalcBMI
//
//  Created by Łukasz Nycz on 18/04/2021.
//

import UIKit

class TipViewController: UIViewController {
    
    var bmi: BMI?
    


    @IBOutlet weak var fullAdvice: UILabel!
    @IBAction func goBackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // fullAdvice.text = String(format: "%.2f", bmi!.doubleValue)
        if bmi!.doubleValue <= 11.9  || bmi!.doubleValue >= 42.0 {
        fullAdvice.text = "wpisz poprawną wartość!"
        }else if bmi!.doubleValue <= 18.5 {
            fullAdvice.text = "porada dla chudych"
        }else if bmi!.doubleValue <= 24.9 {
            fullAdvice.text = "porada dla prawidłowych"
        }else if bmi!.doubleValue <= 29.0 {
            fullAdvice.text = "porada dla otyłych"
        }else if bmi!.doubleValue <= 41.9 {
            fullAdvice.text = "porada dla gruuuubych"
        }else if bmi!.doubleValue >= 42.0 {
            fullAdvice.text = "wpisz poprawną wartość!"
        }
        
    }
    

}
