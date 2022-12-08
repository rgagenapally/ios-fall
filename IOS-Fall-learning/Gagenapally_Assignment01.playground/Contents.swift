import UIKit

/*
When you open this file  in Xcode, it is normal that you see errors in the source code.
 */
//**************** QUESTION 1 ****************
// 1.a) Declare two variables called  distance1 and distance2 of type Double and assign your own values to them and also add 2 declared variables and print output.
var a:Double = 2.0
var b:Double = 5.0
print(a+b)
print("\r----------------------------------------------- \r")
// 1.b) Declare a constant called  maxWeight of type Int and assign with a value of 130, using type annotation
let maxWeight:Int = 130

// 1.c) Print  "Your max weight is xxxx pounds", replacing the xxxx with the value of maxWeight. Use String interpolation
print("Your max weight is \(maxWeight) pounds")
print("\r----------------------------------------------- \r")

// 1.d) Write Swift source code to print the below in one single print statement
            /*
                Hello, All
                Welcome to Swift Programming..!
            */
print("Hello, All \rWelcome to Swift Programming..!")
print("\r----------------------------------------------- \r")


//**************** END OF QUESTION 1 ****************



//**************** QUESTION 2 ****************
// 2.a) Predict what will happen when you try and execute below three statements when you uncomment the third line? comment your prediction

var x = 15
var y = 25.0
//y = x
//throws an error because we are trying to store int value in double



// 2.b) Fix the error in the question 2.a
y = Double(x)



//**************** END OF QUESTION 2 ****************



//**************** QUESTION 3 ****************
//3.a) Declare three constants x, y, z and assign the values 2, 7, 5. Write a swift code to find the largest number among the three integers.
let x1 = 2,y1=7,z=5
if(x1 > y1 && x1>z){ print("x1 is greater")}
else if(y1>x1 && y1>z){ print("y1 is greater")}
else{print("z is greater")}

print("\r----------------------------------------------- \r")

//3.b) Declare 2 variables a,b and assign values 13, 103. Write a swift code to check whether the last digit of the two given integer values are same or not.
var a1 = 13,b1=103
if(a1%10 == b1%10){print("last digit of both a and b are same")}
else{print("both are differrent")}

print("\r-----------------------------------------------")

//**************** END OF QUESTION 3 ****************



//**************** QUESTION 4 ****************
//using loops
//4.a) Print the numbers 1 to N in alternative order, one number from the left side (starting with one) and one number from the right side (starting from N down to 1)
//Decalare var N = 10
//expected output is 1 15 2 14 3 13 4 12 5 11 6 10 7 9
var N = 15,k = N
for i in 1...N/2{
        print("\(i) \(k)",terminator: " ")
        k = k-1
    
}
print("\r-----------------------------------------------")


//4.b) If a number C is given, then print the following half rhombus
//declare C = 5
//output
// Hint : use terminator in print statements and loops
//    *
//   ***
//  *****
// *******
//*********
// *******
//  *****
//   ***
//    *


var c=5,r=0
for i in 1...c{
    r=2*i-1
    for j in 1...c{
        if j==c-i+1{
            for _ in 1...r{
                print("*",terminator: "")
            }
        }
        else{
                print(" ",terminator: "")
        }
    }
    print()
}
for i in stride(from:c-1, through: 1, by: -1){
    r=2*i-1
    for j in stride(from:1, through: c, by: 1){
        if j==c-i+1{
            for _ in 1...r{
                print("*",terminator: "")
            }
        }
        else{
            print(" ",terminator: "")
        }
    }
    print()
}
print("\r-----------------------------------------------")
//**************** END OF QUESTION 4 ****************



//**************** QUESTION 5 ****************
// Using Strings
//5.a) Declare a String and assign the value of your own, Write a Swift code to add "A" in front of the string and print it. If the string already begins with "A", then simply print it.
var s1 = "Complie"
if(s1.starts(with: "A")){
    print("Starts with A")
}else {
    s1.insert(contentsOf: "A", at: s1.startIndex)
    print("\r \(s1)")
}
print("\r------------------------------------------------")

//5.b) Declare a String str1 and and assign the value of your own. Write a swift code to add the last character at the front and back of the given string and print it.
var str1 = "Sam"
print("\r \(String(str1.last!))\(str1)\(String(str1.last!))")
print("\r------------------------------------------------")


//5.c) Declare a String 'Swift' and print them in the reverse order.
let s = "Swift"
print("\r \(String(s.reversed())) \r")
print("------------------------------------------------")



//5.d) Write a Swift code  to check if the first or last characters are 'a' of a given string, return the given string without those 'a' characters in the first and last, otherwise return the given string.
 //declare var myString1 = "ababa"
 //expected output bab
var myString1 = "ababa"
if(myString1.hasSuffix("a")){
    myString1.removeLast()
}
if(myString1.hasPrefix("a")){
    myString1.removeFirst()
}
print("\r \(myString1)")

//**************** END OF QUESTION 5 ****************


 



