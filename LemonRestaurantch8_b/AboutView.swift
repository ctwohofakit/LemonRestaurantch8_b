//
//  AboutView.swift
//  LemonRestaurantCh8
//
//  Created by Kit Sitou on 3/18/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack{
            Image("homeImage")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .aspectRatio(contentMode: .fill)
        }
        VStack {
            Text("About Little Lemon")
                .bold()
                .font(.largeTitle)
                .foregroundStyle(Color.green)
           
            Text("Little Lemon is a cozy Mediteranan Restaurant")
                .bold()
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore")
                .padding()

            HStack{
                Image(systemName: "fork.knife")
                    .padding()
                Image(systemName: "leaf")
                    .padding()
                Image(systemName: "map")
                    .padding()
                    }
            .foregroundStyle(.brown)
            .font(.system(size:25))
            
                }
    
        .padding()
    }
    
}

#Preview {
    AboutView()
}
