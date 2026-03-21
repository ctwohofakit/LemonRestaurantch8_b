import UIKit

//variables var
//constant let

var restaurantName = "Little Lemon"
print("Welcome to \(restaurantName)")


restaurantName = "Little Lemon Bistro"
print("Now we are called \(restaurantName)")

//constant cannot change
let city = "Chicago"

print("Our restaurant is located in \(city)")

//string
var specialDish = "Pasta"
//integer
var availableTables = 5
//Double
var dishPrice = 12.50
//booleans
var isOpen = true

print("Today's special dish \(specialDish) - $\(dishPrice)")

//mini challenge 1
var numberOfTables = 1
let ownerName = "Kit"
print("Little Lemon hsa \(numberOfTables) tables, owned by \(ownerName).")


//mini challenge 2
var veganDish = "Tofu"
var qty = 5
var veganPrice = 16.00
var isPopular = false
print("One of the dish is \(veganDish), the customer ordered \(qty) and the price is $\(veganPrice). but is it popular? \(isPopular).")

//we can define the type(optional)
var antherDish: String="Pizza"
var tableCount:Int=10
var price:Double=8.99
var openStatus:Bool=false

var name = "Kit"

let pastaPrice=10.50
let saladPrice=6.25
let total = pastaPrice + saladPrice
print("Total price: $\(total)")

let tip=total*15/100
let final=tip+total
print("the final price is: \(final)")
print("the final price is: \(total+tip)")
