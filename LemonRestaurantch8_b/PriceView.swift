//
//  PriceView.swift
//  LemonRestaurantch8_b
//
//  Created by Kit Sitou on 4/4/26.
//

import SwiftUI

struct PriceView: View {
    let price: Double
    var priceColor: Color{
        if price > 10 {
            return .orange
        }else{
            return .secondary
        }
    }
    
    var body: some View {
        Text("$\(price, specifier:"%.2f")")
            .font(.headline)
            .foregroundColor(priceColor)
    
    }
}

#Preview {
    PriceView(price: 20.00)
    PriceView(price: 8.00)
}
