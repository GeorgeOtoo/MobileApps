import UIKit

//this creates if coditions


func loveCalculator(lover: String, loved: String) -> String{
    
    let randomNumber = Int.random(in: 0...100)
    
    if randomNumber > 70{
        return "Your love score for the club is \(randomNumber) and Your love for this club is undeniable"
    }
    
    else if randomNumber > 50 && randomNumber <= 70 {
        return "You love score for the club is \(randomNumber) and your love for this club is lacking a little history"
    }
    
    else {
        return "You love score for the club is \(randomNumber) and you are a fucking Bandwagon!"
    }
    
    
}

print(loveCalculator(lover: "George Otoo", loved: "Fc Barcelona"))
