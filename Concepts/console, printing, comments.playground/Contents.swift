import UIKit

var str = "Hello, playground"

// use "//" to comment out your code and use "/* and */" to comment out paragraphs


//var messi = 10
//
//print(messi)

// Creating function in swift

func aTheory(letInnovate: Int, amountGiven: Int) -> Int{
    
    print("My robot wakes up every morning")
    print("I want my robot to inovate \(letInnovate) items")
    let cost = letInnovate * 2
    print("innovation cost is $\(cost)")
    let balance = amountGiven - cost
    
    return balance
    
}

var change = aTheory(letInnovate: 4, amountGiven: 20)

print("your balance is $\(change)")
print("Thank you for your service")

