//
//  CalcBMITests.swift
//  CalcBMITests
//
//  Created by Łukasz Nycz on 21/04/2021.
//

import XCTest
@testable import CalcBMI

class CalcBMITests: XCTestCase {
    

    func test_too_small_notification() throws {
        let bmi = BMI.init(mass: 20.0, height: 180.0)
        let toSmallNotification = bmi.adviceBMI
        
        XCTAssertEqual(toSmallNotification, "Wpisz poprawną wartość!", "Result too small case: correct")
    }
    
    func test_too_big_notification() throws {
        let bmi = BMI.init(mass: 300.0, height: 180.0)
        let toBigNotification = bmi.adviceBMI
        
        XCTAssertEqual(toBigNotification, "Wpisz poprawną wartość!", "Result too small case: correct")
    }
    
    func test_skinny_notification() throws {
        let bmi = BMI.init(mass: 55.0, height: 180.0)
        let skinnyNotification = bmi.adviceBMI
        
       XCTAssertEqual(skinnyNotification, "Masz niedowage, zjedz coś!", "Result skinny case: correct")
    }

    func test_average_notification() throws {
        let bmi = BMI.init(mass: 80.0, height: 180.0)
        let averageNotification = bmi.adviceBMI
        
        XCTAssertEqual(averageNotification, "Twoja waga jest prawidłowa", "Result average case: correct")
    }
    func test_fat_notification() throws {
        let bmi = BMI.init(mass: 90.0, height: 180.0)
        let fatNotification = bmi.adviceBMI
        
        XCTAssertEqual(fatNotification, "Ważysz za dużo! Idź na siłownie.", "Result fat case: correct")
    }

    func test_bigfat_notification() throws {
        let bmi = BMI.init(mass: 100.0, height: 180.0)
        let bigFatNotification = bmi.adviceBMI
        
        XCTAssertEqual(bigFatNotification, "kruszynka :D", "Result  big fat case: correct")
    }
    
    
    

    func test_bmi_result_example() throws {
        let bmi = BMI(mass: 80, height: 180)
        let bmiResult = bmi.doubleValue
        let bmiResultRounded = round(bmiResult * 100) / 100
        
        XCTAssertEqual(bmiResultRounded, 24.69, "Result of BMI case: correct")
    }
    
    func test_critical_min_bmi_result() throws {
        let bmi = BMI(mass: 40, height: 180)
        let bmiCriticalMinResult = bmi.doubleValue
        let roundedMin = round(bmiCriticalMinResult * 100) / 100
        
        XCTAssertEqual(roundedMin, 12.35, "Result of BMI case: correct")
    }
    func test_critical_Max_bmi_result() throws {
        let bmi = BMI(mass: 150, height: 180)
        let bmiCriticalMaxResult = bmi.doubleValue
        let roundedMax = round(bmiCriticalMaxResult * 100) / 100
        
        XCTAssertEqual(roundedMax, 46.30, "Result of BMI case: correct")
    }
    
    
    
    func test_height() throws{
        let bmi = BMI(mass: 120, height: 120)
        let height = bmi.height
        
        XCTAssertEqual(height, 120, "Result of height case: correct")
    }
    func test_mass() throws{
        let bmi = BMI(mass: 120, height: 120)
        let mass = bmi.mass
        
        XCTAssertEqual(mass, 120, "Result of mass case: correct")
    }
 /*
    
    func test_heightLabel() throws {
        let update = ViewController()
        update.heightLabel?.text = nil
        
        XCTAssertEqual(update.heightLabel?.text, nil, "HeightLabel Correct")
    }
    
    func test_weightLabel() throws {
        let update = ViewController()
        update.massLabel?.text =  nil
        
        XCTAssertEqual(update.massLabel?.text, nil, "MassLabel correct")
    }
    func test_bmiLabel() throws {
    let update = ViewController()
        update.bmiLabel?.text = nil
        
        XCTAssertEqual(update.bmiLabel?.text, nil, "BMILabel correct")
    }
    
    func test_adviceLabel() throws {
    let update = ViewController()
        update.adviceLabel?.text = "dupa"
        
        XCTAssertEqual(update.adviceLabel?.text, "dupa", "AdviceLabel correct")
    }
    */
}
    

