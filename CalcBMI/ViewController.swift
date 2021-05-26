//
//  ViewController.swift
//  CalcBMI
//
//  Created by Łukasz Nycz on 17/04/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    // używaj jesli chcesz się dostać do
    //struktury/klasy/funkcji w innym widoku
    var bmi: BMI? {
        didSet {
            updateLayout() // używaj jesli chcesz odświeżyć funkcje/kod
        }
    }
    @IBAction func countBmiButton(_ sender: Any) {
        bmi = BMI(mass: weightTextField.text ?? "", height: heightTextField.text ?? "")
    }
    @IBAction func tipButton(_ sender: Any) {
        // taka zmienna pozwala Ci na przejście do widoku
        // uzywaj zamiast performSegue(bugogenne)
        //
        let vc = storyboard?.instantiateViewController(identifier: "TipViewController") as! TipViewController
        vc.bmi = bmi
        navigationController?.present(vc, animated: true, completion: nil)
    }
    func updateLayout() {
        heightLabel.text = "Twój wzrost to \(String(format: "%.2f", bmi?.mass ?? 0.0))"
        massLabel.text = "Twoja waga to \(String(format: "%.2f", bmi?.height ?? 0.0))"
        bmiLabel.text = "Twoje BMI to: \(String(format: "%.2f", bmi?.doubleValue ?? 0.0))"
        adviceLabel.text = bmi?.type.advice
    }
}
// używaj struktur jeśli możesz
// w przypadku klas tworzysz referencje,
// w przypadku struktur kopiujesz je
// struktury używaj jeśli model nie ma żadnej logiki i jest używany przez coś innego,

enum BMIType {
    case error
    case skinny
    case average
    case fat
    case reallyFat
    
    var advice: String {
        switch self {
        case .error:
            return "Wpisz poprawną wartość!"
        case .skinny:
            return "Jesteś za chudy! zjedz coś!"
        case .average:
            return "Twoja waga jest prawidłowa."
        case .fat:
            return "Ważysz za dużo! Idź na spacer!"
        case .reallyFat:
            return "Masz poważne problemy, zgłoś się do lekarza."
            
        }
    }
    
    init(doubleValue: Double) {
        switch doubleValue {
        case ...11.9 :
            self = .error
        case ...18.5:
            self = .skinny
        case ...24.9:
            self = .average
        case ...29.9:
            self = .fat
        case ...41.9:
            self = .reallyFat
        case 42.0...:
            self = .error
        default:
            self = .error
        }
    }
}

struct BMI {
    let mass: Double
    let height:  Double
    var doubleValue: Double {
        mass / ((height / 100) * (height / 100))
    }

    lazy var type = BMIType(doubleValue: doubleValue)
    
    // w init pamietaj, żeby zastosować
    // self.(zmienna)
    // init wykonuje kod, ale go nie zapamiętuje
    
    init(mass: Double, height: Double) {
        self.mass = mass
        self.height = height
    }
    init?(mass: String, height: String) {
        guard let mass = Double(mass), let height = Double(height) else { return nil }
        
        self.mass = mass
        self.height = height
    }
}
