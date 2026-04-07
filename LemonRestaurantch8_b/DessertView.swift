//
//  DessertView.swift
//  LemonRestaurantch8_b
//
//  Created by Kit Sitou on 3/28/26.
//

import SwiftUI

struct DessertView: View {
    //dictionary
    let dessertItems:[String:Double]=[
        "Tiramisu":8.00,
        "Ice cream":7.45,
        "Brownies":6.20,
    ]

    
    
    var body: some View {
        let sortedMenu = dessertItems.sorted{$0.key < $1.key}

        VStack{
            Text("Dessert Menu")
                .font(.title2)
                .bold()
                .padding()
                
            
            List{
                ForEach(sortedMenu, id: \.key){name, price in
                    MenuItemRowView(name:name, price:price)

//                    HStack{
//                        Text(name)
//                        Spacer()
//                        Text("$\(price, specifier:"%.2f")")
//                    }
                    
                }
            }
            
//            ForEach(diaplayedMenu, id: \.name){name, price in
//                HStack{
//                    Text(name)
//                    Spacer()
//                    Text("$ \(price, specifier:"%.2f")")
//                        .foregroundColor(.secondary)
//                    
//                }
//
        }.background(Color.gray.opacity(0.2))
        .scrollContentBackground(.hidden)
    }
}

#Preview {
    DessertView()
}
