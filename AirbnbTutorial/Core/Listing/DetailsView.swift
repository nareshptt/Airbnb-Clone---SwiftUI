//
//  DetailsView.swift
//  AirbnbTutorial
//
//  Created by student on 29/05/24.
//

import SwiftUI
import MapKit

struct DetailsView: View {
    
    @Environment(\.dismiss) var dismiss
    let listing: Listing
    
    var body: some View {
        
        ScrollView{
            
            ZStack(alignment: .topLeading){
                ListingImagecarouseView(listing: listing)
                    .frame(height: 320)
                
                Button{
                    dismiss()
                    
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                }
                
               
                
            }
                
            VStack(alignment: .leading, spacing: 8){
                
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(alignment: .leading) {
                    HStack(spacing: 2){
                        
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                        Text("4.86")
                        Text("-")
                        Text("23 reviews")
                            .underline()
                            .fontWeight(.semibold)
                            
                        
                    }
                    .font(.caption)
                    .foregroundColor(.black)
                    
                    Text("Miami Florida")
                      
                }
                .font(.caption)
                
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            Divider()
            
            
            // host info view
            
            HStack{
                VStack(alignment: .leading, spacing: 4){
                    Text("Entire villa hosted by Naresh kumar")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing: 2){
                        Text("4 guest-")
                        Text("4 bedrooms-")
                        Text("4 beds-")
                        Text("3 baths")
                    }
                    .font(.caption)
                }
                
                .frame(width: 300, alignment: .leading)
                Spacer()
                
                Image("profile")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .scaledToFill()
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                
                ForEach(0 ..< 2){ feature in
                    
                    HStack(spacing: 12){
                        
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading) {
                           Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                        
                           Text("Superhost are exprience, highly rated host who are commited to providing greate stars for guests ")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                        
                    }
                    
                }
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 16) {
                        
                        ForEach(1 ..< 5) { bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                            
                        }
                        
                    }
                    
                    
                    
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                Text("What this place offers")
                    .font(.headline)
                
                
                ForEach(0 ..< 5) { feature in
                    
                    HStack{
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        Text("Wifi")
                            .font(.footnote)
                        Spacer()
                    }
                    
                }
                
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll be")
                    .font(.headline)
                
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                
                
                
            }
            .padding()
            
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 77)
        
        .overlay(alignment: .bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                
                HStack{
                    
                        
                        VStack(alignment: .leading){
                            
                            Text("$567")
                                .fontWeight(.semibold)
                                .foregroundStyle(.green)
                            Text("Total before taxes")
                            
                            Text("Nov 3 - 23")
                                .foregroundStyle(.gray)
                            

                    }
                    
                    Spacer()
                    
                    Button{
                        
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    
                }
                
                .padding(.horizontal, 32)
            }
            .background(.white)
            
            
        }
        
       
    }
}

#Preview {
    DetailsView( listing: DeveloperPriview.shared.listings[0])
}
