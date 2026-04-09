import UIKit

/*Class is used to define a custom type(blueprint)
 with the class we create obj(customer, dogs,students, books)
 its has properties and methods
 
 --syntax---
 class ClassName{
    var property1:DataType
    var property2:DataType
 
    init(propertyName1: DataType, propertyName2: DataType){
        self.preperty1 = prepertyName1
    self.preperty2 = prepertyName2
 
 }
 
 func funcitonName()->ReturnType{
    return
    }
 }
 
 */


//--Example 1--

class Dog{
    var name:String
    var age: Int
    
    init(nameL:String, ageL:Int){
        self.name = nameL
        self.age = ageL
    }
    
    func bark(){
        print("\(name) say Woof!")
    }
}

let dog1 = Dog(nameL:"Doggy", ageL:1)
let dog2 = Dog(nameL:"Mocha", ageL:5)

dog1.bark()
dog2.bark()

//--Example2--
class Customer{
    var name:String
    var email:String
    var visits:Int
    var phone:String
    
    init(name:String, email:String, visits:Int, phone:String){
        self.name = name
        self.email = email
        self.visits = visits
        self.phone = phone
    }
    
    func greeting()->String{
        return "Welcome back \(name)."
    }
    
    func contactCard()->String{
        return """
            name: \(name), 
            email: \(email), 
            visits: \(visits),
            phone: \(phone)
        """
    }

}
let customer1 = Customer(
    name:"Eric",
    email:"eric@gmail.cm",
    visits:2,
    phone:"123-456-78"
)
let customer2 = Customer(
    name:"kit",
    email:"kit@gmail.cm",
    visits:1,
    phone:"123-456-77"
)
let customer3 = Customer(
    name:"Oscar",
    email:"eo@gmail.cm",
    visits:3,
    phone:"123-456-79"
)

class newCustomer:Customer{
    
}

//call for method
print("---customer 1---")
print(customer1.greeting())
print(customer1.contactCard())

print("---customer 2---")
print(customer2.greeting())
print(customer2.contactCard())

print("---customer 3---")
print(customer3.greeting())
print(customer3.contactCard())


