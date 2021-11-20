import UIKit

//this explains the concept of for loops in swift

//key features

var bestClubsInTheWorld = ["Fc Barcelona", "Real Madrid", "Fc Bayern Munich", "Manchester City"]



//in order to loops through this array you need to creata for loop

for club in bestClubsInTheWorld{ //this loops through the array where club picks a single element in the array
    print(club)
}

var numbers = [1,2,3,4,5,6,7,8,9,10]

//what this loops does it it loops through th numbers array and search for even numbers. the "where" keyword throws an exception in the loop and returns all even numbers
for numb in numbers where (numb % 2 == 0){
    print(numb)
}


//what this loop is doing is it reverses the the numbers in the array and loops through them starting from 10,9,8 etc
for numb in numbers.reversed() where (numb % 2 == 0){
    print(numb)
}

//this is another way to looop through a set of number from 1to 10 inclusive
for numb in 1...10 where (numb % 2 == 0){
    print(numb)
}

//to exclude the number 10 or set a range. this reads from 1 to 9 or 1 less than 10
for numb in 1..<10 where (numb % 2 == 0){
    print(numb)
}

