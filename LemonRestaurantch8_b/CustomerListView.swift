//
//  CustomerListView.swift
//  LemonRestaurantch8_b
//
//  Created by Kit Sitou on 4/7/26.
//

import SwiftUI

struct CustomerListView: View {
    //state dictionary
    @State private var customers:[Customer]=[
        Customer(
            name:"Eric",
            email:"eric@gmail.cm",
            visits:2,
            phoneNumber:"123-456-78"
        ),
        Customer(
            name:"kit",
            email:"kit@gmail.cm",
            visits:1,
            phoneNumber:"123-456-77"
        ),
        Customer(
            name:"Oscar",
            email:"os@gmail.cm",
            visits:4,
            phoneNumber:"123-456-76"
        ),
    ]
    
    var body: some View {
        VStack{
            Image(systemName:"person.2.circle.fill")
                .font(.system(size:50))
                .foregroundColor(.orange)
            Text("Little Lemon")
                .font(.title)
                .fontWeight(.bold)
            Text("Welcome to our restaurant app")
                .foregroundColor(.gray)
        }
        List(customers){ c in
            if c.visits>3 {
                HStack{
                    VStack(alignment:.leading){
                        Text(c.name)
                            .font(.headline)
                        Text(c.email)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    HStack{
                        Image(systemName:"star.fill")
                            .foregroundColor(.purple)
                        Text("Loyalty Member")
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .bold()
                    }
                    .padding(4)
                    .frame(maxWidth: 160)
                    .background(Color.purple.opacity(0.2))
                    .cornerRadius(6)
                    Text("\(c.visits)")
                        .font(.caption)
                        .padding(6)
                        .background(Color.blue.opacity(0.4))
                        .clipShape(Circle())
                }
            }else{
                HStack{
                    VStack(alignment:.leading){
                        Text(c.name)
                            .font(.headline)
                        Text(c.email)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    Text("\(c.visits)")
                        .font(.caption)
                        .padding(6)
                        .background(Color.blue.opacity(0.4))
                        .clipShape(Circle())
                }
            }
        }
        .navigationTitle("Customers")
            
        }
}

#Preview {
    CustomerListView()
}
