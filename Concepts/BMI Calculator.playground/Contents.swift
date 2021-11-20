import UIKit


func bmiCalculator(bodyMass: Int, bodyHeight: Int) -> String{
    
    var bmi: Double
    
     bmi = (Double(bodyMass) /  Double(bodyHeight * bodyHeight))
    
    
    if bmi > 25 {
        return "Your body Mass \(bodyMass) Your height \(bodyHeight) Your BMI \(bmi) you are overweight"
    }
    
    else if bmi > 18.5 && bmi < 25{
         return "Your body Mass \(bodyMass) Your height \(bodyHeight) Your BMI \(bmi) you are of normal weight"
    }
    
    else {
        return "Your body Mass \(bodyMass) Your height \(bodyHeight) Your BMI \(bmi) they are underweight"
    }
    
    
    
}



print(bmiCalculator(bodyMass: Int.random(in: 32...150), bodyHeight: Int.random(in: 1...3)))



