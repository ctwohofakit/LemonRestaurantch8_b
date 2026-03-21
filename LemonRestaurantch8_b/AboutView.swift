//
//  AboutView.swift
//  LemonRestaurantCh8
//
//  Created by Kit Sitou on 3/18/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("About Little Lemon")
                .bold()
                .font(.largeTitle)
                .foregroundStyle(Color.green)
           
            Text("Little Lemon is a cozy Mediteranan restaurant")
                .bold()
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore")
            HStack{
                Image(systemName: "fork.knife")
                    .foregroundStyle(.yellow)
                Image(systemName: "leaf")
                    .foregroundStyle(.yellow)
                Image(systemName: "map")
                    .foregroundStyle(.yellow)
                    }
            
                }
    
        .padding()
    }
    
}

#Preview {
    AboutView()
}
