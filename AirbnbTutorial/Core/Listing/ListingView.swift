//
//  ListingItemView.swift
//  AirbnbTutorial
//
//  Created by student on 28/05/24.


import SwiftUI

struct ListingItemView: View {
    
    let listing: Listing
    
    var body: some View {
        
        VStack(spacing: 8){
            
            // images
            
            ListingImagecarouseView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing Details
            
            HStack(alignment: .top){
                
                //Details
                
                VStack(alignment: .leading){
                    
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack{
                        Text("$\(listing.numberOfpernight)")
                            .fontWeight(.semibold)
                            .foregroundStyle(.green)
                        Text("night")
                            .foregroundStyle(.black)
                        
                    }
                    
                }
                
                
                
                Spacer()
                //Rating
                
                HStack(spacing: 2){
                    
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                    Text("\(listing.rating)")
                    
                    
                }
                
            
                
                
            }
            
            .font(.footnote)
            
        }
        
        .padding()
    }
        
}

#Preview {
    ListingItemView(listing: DeveloperPriview.shared.listings[0])
}
