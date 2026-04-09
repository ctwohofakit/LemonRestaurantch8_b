//
//  HomeView.swift
//  LemonRestaurantch8_b
//
//  Created by Kit Sitou on 4/7/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            //header
            VStack{
                Image("littleLemonLogo")
                    .resizable()
                    .frame(width:200, height:50)
                    .scaledToFit()
                Text("Little Lemon")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Welcome to our restaurant app")
                    .foregroundColor(.gray)
                    .foregroundColor(.gray)
            }
            List{
                NavigationLink{
                    MenuView()
                }label:{
                    Label("Menu", systemImage:"fork.knife")
                }
                NavigationLink{
                    CustomerListView()
                }label:{
                    Label("Customers", systemImage:"person.2.fill")
                }
                NavigationLink{
                    ReservationForm()
                }label:{
                    Label("Reservation", systemImage:"calendar")
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
