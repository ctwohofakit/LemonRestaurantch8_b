//
//  RegularBadgeView.swift
//  LemonRestaurantch8_b
//
//  Created by Kit Sitou on 4/4/26.
//

import SwiftUI

struct RegularBadgeView: View {
    var body: some View {
        HStack{
            Image(systemName:"star.square.fill")
                .foregroundColor(.blue)
            Text("Regular")
                .font(.caption)
        }
        .padding(6)
        .frame(maxWidth: 100)
        .background(Color.green.opacity(0.15))
        .cornerRadius(6)
        
    }
}

#Preview {
    RegularBadgeView()
}
