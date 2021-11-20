//
//  main.swift
//  Classes and Objects
//
//  Created by George Otoo on 3/14/19.
//  Copyright © 2019 George Otoo. All rights reserved.
//

import Foundation

//let myCar = Car() //I created an object using the car class
//
//let cutomizeCar = Car(customerColorChoice: "indigo")
//
//print(myCar.color)
//print(myCar.numberOfSeats)
//print(myCar.typeOfCar)
//
//print(cutomizeCar.color)
//print(cutomizeCar.numberOfSeats)
//print(cutomizeCar.typeOfCar)
//
//myCar.drive()

let selfCar = selfDrivingCar()

selfCar.destination = "1 hacker Way"
selfCar.drive()
print(selfCar.color)



