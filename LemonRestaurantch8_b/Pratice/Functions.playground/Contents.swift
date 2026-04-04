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

//This is for the 102 class #2
//function  + bool
func greet2(person:String, formally:Bool)->String{
    if formally{
        return "Greetings, " + person
    }else{
        return "Hi, " + person
    }
}

print(greet2(person:"Someone", formally: true))


//mini -ex: Create a fucntion to calculate price + tax and show result
func totalAmount(price:Double, tax:Double)->Double{
    let total=price+tax
    return total
}

print(totalAmount(price:20.00,tax:5.00))


func calTaxes(price:Double, taxRate:Double)->Double{
    return price + (price * taxRate)
}

let total = calTaxes(price: 9.00, taxRate: 0.06)
//print("Total: $ \(total, specifier:"%.2f")")
print("Total: $\(String(format:"%.2f", total))")


//create a function deliveryTime(minutes:)that returns "Ready in X mintues".

func deliveryTime(mintues:Double)->String{
    return "Ready in \(mintues) mintues."
}

let msg2=deliveryTime(mintues:20)
print(msg2)


