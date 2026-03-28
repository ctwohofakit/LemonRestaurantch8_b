//
//  MenuView.swift
//  LemonRestaurantch8_b
//
//  Created by Kit Sitou on 3/26/26.
//

import SwiftUI

struct MenuView: View {
    //Dictionary
    let menuItems:[String:Double]=[
        "Pizza":9.99,
        "Pasta":10.50,
        "Salad":8.00,
        "Soup":4.76,
        "Steak":14.99,
        "Fresh toast":9.00,
        "Omelette":18.86,
        "Salmon":16.89
    ]
    
    
    //function
    func getTotalItem()->Int{
        menuItems.count
    }
    
    var body: some View {
        
        //convert the dictionary into a sorted array
        //key and value
        let sortedMenu = menuItems.sorted{$0.key < $1.key}
       
        VStack{
            VStack{
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                
                Text("Today' menu")
                    .font(.title2)
                    .bold()
            }
        }
        List{
            ForEach(sortedMenu, id: \.key){name, price in
                HStack{
                    Text(name)
                    Spacer()
                    Text("$ \(price, specifier:"%.2f")")
                        .foregroundColor(.secondary)
                    
                }
                

                
            }
        }
        //Footer
        Section{
            HStack{
                VStack{
                    Text("Total item: \(getTotalItem())")
                   
                }
                
            }
        }
        
    }
}

#Preview {
    MenuView()
}
