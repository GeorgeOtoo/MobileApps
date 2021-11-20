//
//  Car.swift
//  Classes and Objects
//
//  Created by George Otoo on 3/14/19.
//  Copyright © 2019 George Otoo. All rights reserved.
//

import Foundation

enum CarType { // you create your own data type
    case Sedan
    case Coupe
    case Hatchback
}

//enum CarColor{
//    case blue
//    case orange
//    case teal
//    case pink
//    case indigo
//}

class Car {
    
    var color = "Black"
    var numberOfSeats  = 5
    var typeOfCar : CarType = .Sedan //this is how you initialize your data type
    
    init() { //this allows us to create a cutom initialization for the customer to choice a prefered color choice
        
    }
    
    //the convenience initializer allows you to customize default situations
    
    convenience init(customerColorChoice: String){
        self.init() // this allows you to make changes to the default case
        color = customerColorChoice
        
    }
    
    
    func drive(){
        print("the car is driving")
    }
}
