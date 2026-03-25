import UIKit

//if - else if -else
/*
 ----syntax-----
 
 
 if ocndition1{
    this block runs if condition1 is true
 }else if condistion2{
    this block rus if ocndition1 is false and ocndition2 is true
 }else{
    this block rus if none of the above conditions are true
 }
 
 */


//example 1
var guests:Int = 11
let capacity:Int = 10

if guests>capacity{
    print("Over capacity!")
}else {
    print("We can seat this party.")
}

//example 2
let rating:Double = 4.2

if rating >= 4.5{
    print("Excellent")
}else if rating >= 3.5{
    print("Good")
}else{
    print("Need improvemnet")
}

/*
 Mini Challenge #1
 Create a varible called age.
 YOur program should print:
 - "Senior discount applied" if age is 65 or higher
 - "Standard price" otherwise.
 
 */

var age:Int = 72
if age >= 65{
    print("Senior discount applied")
}else {
    print("Standard price")
}

//example 3: bool operatiors(true/fase)
let isBirthday:Bool = true

if isBirthday{
    print("Free dessert for you")
}else {
    print("No free dessert today")
}


/*mini challenge2
 use the foloowing variables:
 -isOPen = true
 -hasTable =f alse
 isVip = true
 
 write an if statement that decides whether a customer can enter the restaurant.
 a customer is alllowed to enter if :
 -the restaurant is oprn AND has available tables,
 or
 -the customer is VIP
 
 your program must print:
 -"Welcome in!" if the customer is allowed to enter
 -"Please wait" if the customer is not allowed to enter
 */

var isOpen:Bool = true
var hasTable:Bool = false
var isVIP:Bool = true

if isOpen && hasTable && isVIP{
    print("Welcome in!")
}else if isVIP==false{
    print("Print wait")
}else{
    print("Restaurant is not open or has no seat avaliable!")
}

if (isOpen && hasTable) || isVIP{
    print("Welcome in!")
}else{
    print("PLeae wait")
}




//Ternary
let price:Double=12.0
let label = price > 10 ? "Premium": "Regular"
print(label)

//comparing strings
let userName:String="Pam"

if userName=="Pam"{
    print("Welcome, Pam!")
}else{
    print("Unknown user")
}

//number
let children:Int=2
let groupSize: Int = 5

if groupSize >= 8 {
    print("large group - call manager")
}else if children > 0 {
    print("offer kids menu")
}else{
    print("standard seating")
}



