//
//  MenuItemRowView.swift
//  LemonRestaurantch8_b
//
//  Created by Kit Sitou on 4/4/26.
//

import SwiftUI

struct MenuItemRowView: View {
    let name:String
    let price:Double
 
    
    var body: some View {
        HStack{
            VStack(alignment:.leading){
                Text(name)
                    .font(.headline)
                
                Text("$\(price, specifier:"%.2f")")
                    .foregroundColor(.secondary)
            }
            Spacer()
            
            //desplay the premium badge if the price is greater than 14.00
            
            if price > 10{
                PremiumBadgeView()                
            } else {
                RegularBadgeView()
            }
            
        }
    }
}
#Preview {
    MenuItemRowView(name:"Soup", price:5.50)

}
