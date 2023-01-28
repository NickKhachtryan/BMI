//
//  BMIBrain.swift
//  IBM
//
//  Created by Nick Khachatryan on 04.12.2020.
//

import UIKit

struct BMIBrain {
    
    
    //  MARK: - CUSTOM PROPERTIES
    var bmi : BMI?

    
    //  MARK: - FUNCTIONS
    mutating func getBMI(weight : Float, height: Float){
        
        let result = weight / pow(height, 2)
        
        switch result {
        case ...18.4:
            bmi = BMI(resultBmi: result, resultImg: #imageLiteral(resourceName: "normal"))
        case 18.5...24.9:
            bmi = BMI(resultBmi: result, resultImg: #imageLiteral(resourceName: "underweight"))
        case 25.0...29.9:
            bmi = BMI(resultBmi: result, resultImg: #imageLiteral(resourceName: "overweight"))
        case 30.0...34.9:
            bmi = BMI(resultBmi: result, resultImg: #imageLiteral(resourceName: "obese"))
        case 35.0...:
            bmi = BMI(resultBmi: result, resultImg: #imageLiteral(resourceName: "extremlyObese"))
        default:
            print("Error")
        }
    }
    
    func sendBMI() -> String{
        return String(format: "%.1f", bmi?.resultBmi ?? 0.0)
    }
    
    func sendImage() -> UIImage{
        return bmi?.resultImg ?? #imageLiteral(resourceName: "apple")
        
    }
}
