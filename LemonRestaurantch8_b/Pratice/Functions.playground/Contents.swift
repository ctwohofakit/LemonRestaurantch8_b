import UIKit

//fucntions

//func funcionName(parameter1: Type, parameter2: Type) -> ReturnType {
//    // function body
//    // logic goes here
//    return value
//}


//Example 1
func printWelcome(){
    print("Hello cohort 8")
}

printWelcome()


//Example 2, 1 parameter
func greet(person:String)->String{
    let greeting = "Hello"+person+"!"
    return greeting
}

let message = greet(person:"Sam")
print(message)


//Example 3, 2 parameters
func add(number1:Int,number2:Int)->Int{
    return number1 + number2
}

let result = add (number1:235,number2:664)
print("The result is:\(result)")



//Example 4 -with unnamed parameters
func multiply(_ x:Int,_ y:Int)->Int{
    return x*y
}

print(multiply(3,5))



//mini challenage
func welcomeStudent(name:String)->String{
    let greeting = "Welcome,"+name+"! Ready to learn Swift"
    return greeting
}

let greeting=welcomeStudent(name:"Pam")
print(greeting)

