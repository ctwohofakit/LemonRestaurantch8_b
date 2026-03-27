import UIKit

/*
 ---Arrays---
 an array is an ordered collection of values
The items inside an array are stored in specific sequence, and each item can be aaccessed using its index (a number starting at0)
 
 Syntax
 var varName:[String]=["element 1","element 2", "..."]
 or
 var varName=["element 1","element 2","..."]
 
 */
//              [0] ,[1], [2]
var dishes:[String] = ["Pizza","Pasta","Salad"]
print(dishes)


//Example 2
// orer is an empty array with initialer
var orders = [String]()
orders.append("Soup")
orders.append("Burger")
print(orders[1])
print(orders.count)

// last order is the array count -1
let lastOrder = orders[orders.count-1]
print(lastOrder)

//Example 3
//arrayName[startpoint...endpoint]
let letters=["A","B","C","D","E"]
print(letters[1...3])
print(letters[1 ... 3])

//Everthing before using ..
print(letters[..<2])

//Element and above
print(letters[2...])
//or
print(letters.dropFirst(2))

//Everthing after


/*---Dictionary---
 
 A dictionary is a collection of key-value oarus.
 each value is asociated with a unique key, and you use the key to access the value
 
 Syntax
 
 var varName:[String:String]=[
    "key":"value",
    "key2":"value2",
    "key3":"value"
 ]
 */

var firstName:[String:String]=[
    "user01":"Kit",
    "user02":"Oscar",
    "user03":"Eric"
]


//use ! to remove optional
print(firstName["user01"]!)

//add an item in dictionary
firstName["user04"]="Tom"

print(firstName)

//Example 2
var menuPrices:[String:Double]=[
    "Pizza":12.99,
    "Salad":13.80,
    "Pasta":9.50
]
print(menuPrices)
print(menuPrices["Pizza"]!)

print("Menu prices: \(menuPrices["Pizza"]!)")


//Remove an item in dictionary
menuPrices["Salad"] = nil
//Add an item in dictionary
menuPrices["Rice"]=5.00
print(menuPrices)

//Example 3
var drinks:[String:Double]=[
    "Soda": 2.5,
    "Coffee":6.75,
    "Tea":3.0
]

/*
 --ForEach--
 
 foreach is a method avaliable for arrays and dictionary that let you run a block of code once for ecery element in the collection
 
 Syntax
 
 array.forEach{ element in
    //code using element
 }
 products.forEach{ product in
 
 }
 
 
 */

let names=["Oscar","Kit","Eric","Leo"]
names.forEach{ name in
    print("Name = \(name)")
}

for name in names{
    print("For loop \(name)")
}





/*Dioctionary Syntax
 dictionary.forEach{ key, value in
    //code using key and value
 
 }
 */

var fruits:[String:Double]=[
    "Apple":1.50,
    "Banana":1.40,
    "Mango":2.30
    
]

fruits.forEach { key, value in
print("\(key): $\(value)")

}

//naming convension of key and value can change
fruits.forEach { fruit, price in
    print("\(fruit): $\(price)")
}

//forEach, if
fruits.forEach { fruit, price in
    if price > 2{
        print("\(fruit): $\(price)")
    }
}

print("--For loop--")
for fruit in fruits{
    print(fruit)
}


for (fruit, price) in fruits{
    print("\(fruit), \(price)")
}
//
