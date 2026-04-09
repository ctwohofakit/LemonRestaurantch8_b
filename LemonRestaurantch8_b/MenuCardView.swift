//
//  MenuCartView.swift
//  LemonRestaurantch8_b
//
//  Created by Kit Sitou on 4/4/26.
//

import SwiftUI

struct MenuCardView: View {
    let name:String
    let price:Double
    
    var body: some View {
        MenuItemRowView(name:name, price:price)
            .background(Color.white)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius:12)
                    .stroke(Color.gray.opacity(0.2), lineWidth:1)
            )
            
    }
}

#Preview {
    
    MenuCardView(name:"Steak", price:14.99)
    MenuCardView(name:"Steak", price:3.99)
    MenuCardView(name:"Steak", price:14.99)
}
