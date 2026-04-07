//
//  MenuView.swift
//  LemonRestaurantch8_b
//
//  Created by Kit Sitou on 3/26/26.
//

import SwiftUI

struct MenuView: View {
    //variables
    @State private var showMessage = false
    @State private var affordableOnly = false
    @State private var showDesserts = false
    
    
    //Dictionary
    let menuItems:[String:Double]=[
        "Pizza":9.99,
        "Pasta":10.50,
        "Salad":8.00,
        "Soup":4.76,
        "Steak":14.99,
        "Toast":8.00,
        "Omelette":14.86,
        "Salmon":16.89
    ]
    
    //computerProperties
    // does not store the value, they caluculate it
    //Syntax
    /*
     var propertyName:Type{
     return a calculated value
     }
     */
    
    //dictionary is unorder, so we need to convert it as arry tuble
    //computed property #1: it creates a sorted list of menu items.
    // it converts dic into an array (name, price)
    // and sorts it alpha order by dish name
    var sortedMenu: [(name:String,price:Double)]{
        menuItems
            //$0 is the first item to compare
            //$1 is the second item to compare
            .sorted { $0.key < $1.key} // arry of (name, price)
            .map {(name: $0.key, price: $0.value)}// rename the tupple items
    }
    

    //Computed propert #2: display the affordableOnly(based on the toggle)
    var displayedMenu:[(name:String, price:Double)]{
        if affordableOnly {
            return sortedMenu.filter { $0.price < 9 }
        }else{
            return sortedMenu
        }
    }
    var filterCount:Int{
        return displayedMenu.count
    }
    
    
    //function
    func getTotalItem()->Int{
        menuItems.count
    }
    
    //get highest price
    func getHighestPrice()->Double{
        var highest = 0.0
        
        for item in sortedMenu{
            if item.price > highest {
                highest = item.price
                
            }
        }
        return highest
    }
    
    //get lowest price
    /*
    func getLowestPrice()->Double{
        var lowest = getHighestPrice()
        for item in sortedMenu{
            if item.price < lowest {
                lowest = item.price
            }
        }
        return lowest
    }*/
    
    //get lowest price
    func getLowestPrice()->Double{
        var lowest = Double.greatestFiniteMagnitude
        
        for item in sortedMenu{
            if item.price < lowest {
                lowest = item.price
            }
        }
        return lowest
    }
    
    //get average
    var averagePrice:Double {
        let prices = menuItems.map{ $0.value }
        let total = prices.reduce(0,+)
        return total / Double(prices.count)
    }
    
    
    
    
    
    var body: some View {
        
        //convert the dictionary into a sorted array
        //key and value
//        let sortedMenu = menuItems.sorted{$0.key < $1.key}
       
        VStack{
            VStack{
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 30)
                
                Text("Today' menu")
                    .font(.title2)
                    .bold()
                VStack{
                    Toggle("show welcome message", isOn: $showMessage)
                    Toggle("Show affordable", isOn:$affordableOnly)
                        
                }.padding()

                if showMessage{
                    Text("Welcome to little lemon!")
                        .font(.headline)
                        .foregroundColor(.brown)
                        
                }

                
                //view Dessert button
                Button("View Desserts"){
                    showDesserts = true
                }
                .foregroundColor(.black)
                .bold()
                .sheet(isPresented: $showDesserts){
                    DessertView()
                  
                }
                .padding()
                .background(Color.green.opacity(0.2))
                .cornerRadius(10)
 
            }
            
            
            
            
            List{

                if affordableOnly{
                    Text("Showing \(filterCount) items")
                        .font(.headline)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .listRowSeparator(.hidden)
                }else{
                    Text("Showing \(getTotalItem()) items")
                        .font(.headline)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .listRowSeparator(.hidden)
                }
            
                ForEach(displayedMenu, id: \.name){name, price in
                    MenuItemRowView(name:name, price:price)
//                    HStack{
//                        Text(name)
//                        Spacer()
//                    
//                        Text("$ \(price, specifier:"%.2f")")
//                            .foregroundColor(.secondary)
//                        
//                    }
                
                    
                }
            }
        
            
            //Footer
            Section{
                VStack{
                    HStack{
                        Text("Total menu items:")
                        Spacer()
                        Text("\(getTotalItem())")
                        
                    }
                    HStack{
                        Text("The highest price:")
                        Spacer()
                        Text("$\(getHighestPrice(), specifier:"%.2f")")
                    }
                    HStack{
                        Text("The lowest price:")
                        Spacer()
                        Text("$\(getLowestPrice(), specifier:"%.2f")")
                    }
                    HStack{
                        Text("The average price:")
                        Spacer()
                        Text("$\((averagePrice),specifier:"%.2f")")
                    }
                    
                }

                .padding()
                .background(Color.gray.opacity(0.1))
                
            }
            
        }
        
        
        

        
    }
}

#Preview {
    MenuView()
}
