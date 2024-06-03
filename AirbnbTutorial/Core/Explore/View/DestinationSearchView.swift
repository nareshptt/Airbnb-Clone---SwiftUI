//
//  DestinationSearchView.swift
//  AirbnbTutorial
//
//  Created by student on 29/05/24.
//

import SwiftUI

enum DestinationSearchOption {
    case location
    case dates
    case guest
}

struct DestinationSearchView: View {
    
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption : DestinationSearchOption = .location
    
    
    @State private var startdate = Date()
    @State private var enddate = Date()
    
    @State private var numofguest = 0
    
    
    var body: some View {
        
    
    
    HStack{
            Button{
                withAnimation(.snappy){
                    show.toggle()
                }
                
            }label: {
                
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            Spacer()
            
        if !destination.isEmpty {
            Button("Clear"){
                destination = " "
                
            }
            .foregroundStyle(.black)
            .font(.subheadline)
            .fontWeight(.semibold)
        }
           }
        
        .padding()
        
        VStack(alignment: .leading){
            
            if selectedOption == .location{
                
                Text("Where to ?")
                    .font(.title2)
                    .fontWeight(.semibold)
                HStack{
                    Image(systemName: "magnifyingglass")
                        .imageScale(.small)
                    
                    TextField("Search Destination", text: $destination)
                        .font(.subheadline)
                }
                .frame(height: 44)
                .padding(.horizontal)
                .overlay{
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1.0)
                        .foregroundStyle(Color(.systemGray4))
                }
                
            }else{
                
                CollapsedPickerView(title: "where", description: "Add destination")
            }
            
          
            
        }
        .padding()
        .frame(height: selectedOption == .location ? 120 : 64)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .shadow(radius: 10)
        .onTapGesture {
            withAnimation(.snappy){
                selectedOption = .location
            }
        }
        
        
        
        
        // data selection
        
        
        VStack(alignment: .leading){
            
            if selectedOption == .dates{
               
                Text("When's your trip?")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                VStack{
                  
                    DatePicker("From", selection: $startdate, displayedComponents: .date)
                    
                    Divider()
                    
                    DatePicker("To", selection: $enddate, displayedComponents: .date)
                    
                    
                }
                .foregroundStyle(.gray)
                .font(.subheadline)
                .fontWeight(.semibold)
                
            }else{
                
                CollapsedPickerView(title: "When", description: "Add dates")
            }
        
        }
        .padding()
        .frame(height: selectedOption == .dates ? 180 : 64)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .shadow(radius: 10)
        .onTapGesture {
            withAnimation(.snappy){
                selectedOption = .dates
            }
        }
        
        
        
        
        // num guest view
        
        VStack(alignment: .leading){
            
            if selectedOption == .guest{
                
               Text("Who is coming ?")
                    .font(.title)
                    .fontWeight(.semibold)
                Stepper{
                    
                    Text("\(numofguest) Adults")
                    
                }onIncrement: {
                    numofguest += 1
                }onDecrement: {
                   
                    
                    guard numofguest > 0 else {return}
                    numofguest -= 1
                }
                
                
                
            }else{
                
                CollapsedPickerView(title: "Who", description: "Add guest")
                
            }
        }
        .padding()
        .frame(height: selectedOption == .guest ? 120 : 64)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .shadow(radius: 10)
        .onTapGesture {
            withAnimation(.snappy){
                selectedOption = .guest
            }
            
           
            }
        
       }
    
        
}

#Preview {
    DestinationSearchView(show: .constant(false))}

struct CollapsedPickerView: View {
    
    let title: String
    let description: String
    
    var body: some View {
        VStack{
            
            
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            
            
        }
    }
}
