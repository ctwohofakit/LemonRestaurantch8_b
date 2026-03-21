//
//  ContentView.swift
//  LemonRestaurantCh8
//
//  Created by Kit Sitou on 3/17/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "sun.min.fill")
                    .imageScale(.large)
                    .foregroundStyle(.yellow)
                Text("Monday")
            }
            HStack{
                Image(systemName: "cloud.rain.fill")
                    .imageScale(.small)
                    .foregroundStyle(.green)
                Text("Tuesday")
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
