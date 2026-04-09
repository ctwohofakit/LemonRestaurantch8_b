//
//  CustomerModel.swift
//  LemonRestaurantch8_b
//
//  Created by Kit Sitou on 4/7/26.
//

import Foundation

class Customer: Identifiable{ // make it identifiable and add UUID
    let id = UUID() //need to add to object
    var name:String
    var email:String
    var visits:Int
    var phoneNumber:String
    
    init(name:String, email:String, visits:Int, phoneNumber:String){
        self.name = name
        self.email = email
        self.visits = visits
        self.phoneNumber = phoneNumber
        
    }
    
    func summary()-> String{
        return "\(name) - visit:\(visits)"
    }
    //ui need the id
    
    
    
}
