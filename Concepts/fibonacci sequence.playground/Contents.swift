import UIKit

/*
 
 fibonnaci sequence
 0,1,1,2,3,5,8
 
 */

//project Euler

func fibonacci(_ untilSequence: Int){
    
    var firstTerm = 0
    var secondTerm = 1
    
    for _ in 0...untilSequence{
        
        let num = firstTerm + secondTerm
        print(num)
        
        firstTerm = secondTerm
        secondTerm = num
    }
    
}


fibonacci(5)
