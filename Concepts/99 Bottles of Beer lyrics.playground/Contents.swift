import UIKit

///this prints the lyrics of 99 Bottle of beer


    for bottles in (0...99).reversed(){
        
        if bottles == 0{
            print("No more bottles of beer on the wall, no more bottles of beer")
            print("Go to the store and buy more, 99 bootles of beer on the wall")
            break
        }
        
        print((bottles),"bottles of beer on the wall, \(bottles) bottles of beer")
        let priorBottles = bottles - 1
        
        if priorBottles == 0 {
            print("Take one down and pass it around, no more bottles of beer on the wall")
            print()
            continue
        }
        print("Take one down and pass it around, \(priorBottles) bottles of beer on the wall")
        print()
        
    }

