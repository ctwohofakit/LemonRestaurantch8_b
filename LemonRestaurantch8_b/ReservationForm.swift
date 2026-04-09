//
//  ReservationForm.swift
//  LemonRestaurantCh8
//
//  Created by Kit Sitou on 3/19/26.
//

import SwiftUI

struct ReservationForm: View {
    //constants
    let restaurantName: String = "Little Lemon"
    let maxGuess:Int = 10
    let maxChildren:Int = 5
    
    @State private var userName:String=""
    @State private var guestCount:Int=1
    @State private var phoneNumber: String = ""
    @State private var previewText:String=""
    @State private var occasionInfo:String=""
    @State private var childCount:Int=0
    
    //1) Label got guest or guests
    func guestLabel(_ count:Int)-> String{
        count == 1 ? "Guest":"Guests"
    }
    
    //2) total adult:$15.00,  child:$8.00
    func estimateTotal(adults:Int, children:Int)->Double{
        let adultPrice = 15.00
        let childrenPrice = 8.00
        
    return Double(adults)*adultPrice+Double(children)*childrenPrice
    }
    
    
    //3) validation of the phone number
    func isValidPhone(phone: String) -> Bool{
        let digits = phone.filter {$0.isNumber}
        return digits.count==10
    }
    
    //4) Label for Child or Children
    func childLabel(_ count:Int)-> String{
        count <= 1 ? "Child":"Children"
    }
    
    
    
    
    
    var body: some View {
        VStack{
            Image(systemName:"calendar.circle.fill")
                .font(.system(size:50))
                .foregroundColor(.orange)
            Text("Little Lemon")
                .font(.title)
                .fontWeight(.bold)
            Text("Welcome to our restaurant app")
                .foregroundColor(.gray)
                .foregroundColor(.gray)
        }
        Form{
            //--Header--
            Section{
                HStack{
                    Image(systemName:"fork.knife")
                        .font(.title2)
                        .foregroundColor(.blue)
                    VStack{
                        Text(restaurantName)
                            .font(.title3)
                            .bold()
                        Text("Reservation form")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        
                    }
                }
            }
            Section(header:Text("Reservation Details")){
                TextField("Name",text: $userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                
                //--reservation details--
                Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...maxGuess)
                    .bold()
                
                if userName.isEmpty{
                    HStack{
                        Image(systemName:"exclamationmark.circle.fill")
                            .foregroundColor(.brown)
                        Text("Please enter a name.")
                            .font(.footnote)
                            .foregroundColor(.brown)
                            .bold()
                    }
                    .listRowBackground(Color.yellow.opacity(0.2))
                    .listRowSeparator(.hidden)
                }
                if guestCount >= 8{
                    HStack{
                        Image(systemName:"exclamationmark.circle.fill")
                            .foregroundColor(.brown)
                        Text("Large group - please call ahead.")
                            .font(.footnote)
                            .foregroundColor(.brown)
                            .bold()
                        }
                    .listRowBackground(Color.yellow.opacity(0.2))
                }
                

            }
            
            //--contact--
            Section(header:Text("Contact")){
                TextField("Phone", text: $phoneNumber)
                    .keyboardType(.numberPad)
                
                //using isValidPhone()
                if !phoneNumber.isEmpty{
                    if isValidPhone(phone: phoneNumber){
                        Text("Valid phone number")
                            .foregroundColor(.blue)
                            .listRowBackground(Color.blue.opacity(0.2))
                            .font(.footnote)
                            .bold()
                    }else{
                        HStack{
                            Image(systemName:"exclamationmark.circle.fill")
                                .foregroundColor(.brown)
                            Text("Please only enter 10 digits.")
                                .foregroundColor(.brown)
                                .font(.footnote)
                                .bold()
                        }
                        .listRowBackground(Color.yellow.opacity(0.2))
                        
                        
                    }
                }
            }
            
            //--Optional info
            Section(header:Text("Optional")){
                TextField("Occasion (Birthday, Anniversary, etc.)", text : $occasionInfo)
                    .autocorrectionDisabled(false)
                    
                Stepper("Children: \(childCount)",value:$childCount, in:0...maxChildren)
                    .bold()
                
                if childCount > 0{
                    Text("Kids menu available")
                        .font(.footnote)
                        .foregroundColor(.blue)
                        .bold()
                        .listRowBackground(Color.blue.opacity(0.1))
                }
                
            }

            
            
            //--action--
            Section(header:Text("Actions")){
                Button("Preview Reservation"){
                    if childCount <= 0{
                        previewText="""
                        Name: \(userName)
                        \(guestLabel(guestCount)):\(guestCount)
                        Phone: \(phoneNumber)
                        Occassion: \(occasionInfo)
                    """
                    }else {previewText="""
                        Name: \(userName)
                        Guest: \(guestCount)
                        Phone: \(phoneNumber)
                        \(childLabel(childCount)):\(childCount)
                        Occassion:\(occasionInfo)
                        """}

                }.disabled(userName.isEmpty)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .bold()

            }
           
           
                
            //--preview--
            if !previewText.isEmpty{
                Section(header: Text("Preview")){
                    Text(previewText)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        .padding(.vertical,4)
                        .textSelection(.enabled)
                    
                }
            }
            Section(header:Text("Summary")){
                VStack{
                    HStack{
                        Spacer()
                        Text("Reservation Summary")
                            .font(.headline)
                        Image(systemName:"text.magnifyingglass")
                        Spacer()
                    }

                    
                    //add the data
                    HStack{
                        Text("Name")
                        Spacer()
                        Text(userName)
                    }//name
                    HStack{
                        Text(guestLabel(guestCount));Spacer();
                        Text("\(guestCount)")
                        
                    }//adults
                    HStack{//children
                        Text(childLabel(childCount))
                        Spacer()
                        Text("\(childCount)")
                    }
                    //the estimate total
                    HStack{
                        Text("Estimate Total")
                        Spacer()
                        Text("$\(estimateTotal(adults:guestCount, children:childCount),specifier:"%.2f")")
                            .bold()
                    }
                    .padding()
                    .background(Color.gray.opacity(0.08))
                    .cornerRadius(12)
                }
            }
            
        }//form
        .navigationTitle("Reservation")
    }
}

#Preview {
    NavigationStack{
        ReservationForm()
    }
}
