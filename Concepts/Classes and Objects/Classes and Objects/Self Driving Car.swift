//
//  Self Driving Car.swift
//  Classes and Objects
//
//  Created by George Otoo on 3/14/19.
//  Copyright © 2019 George Otoo. All rights reserved.
//

import Foundation

class selfDrivingCar : Car {
    
    var destination : String? //optionals
    
    override func drive() { // overides the drive function in the car class
        super.drive() // adopts all the properties from the drive method and allows you to modify it
        if let gpsDestination = destination{  //creating optionals in swift
        print("welcome to " + gpsDestination)
        }
    }
}
