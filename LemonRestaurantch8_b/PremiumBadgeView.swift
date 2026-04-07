//
//  PremiumBadgeView.swift
//  LemonRestaurantch8_b
//
//  Created by Kit Sitou on 4/4/26.
//

import SwiftUI

struct PremiumBadgeView: View {
//    let label: String
//    let icon: String
//    let color: Color
    
    var body: some View {
        HStack{
            Image(systemName:"star.square.fill")
                .foregroundColor(.orange)
            Text(" Premium ")
                .font(.caption)
        }
        .padding(6)
        .frame(maxWidth: 100)
        .background(Color.yellow.opacity(0.2))
        .cornerRadius(6)
    }

}

#Preview {
    VStack{
        PremiumBadgeView()
    }
}
