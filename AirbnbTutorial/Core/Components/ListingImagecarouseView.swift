//
//  ListingImagecarouseView.swift
//  AirbnbTutorial
//
//  Created by student on 29/05/24.
//

import SwiftUI

struct ListingImagecarouseView: View {
    let listing: Listing
    
    var body: some View {
        
        TabView {
            
            ForEach(listing.imageUrl, id: \.self) { image in
                
                Image(image)
                    .resizable()
                    .scaledToFill()
                
            }
            
        }
        
        .tabViewStyle(.page)

    }
}

#Preview {
    ListingImagecarouseView(listing: DeveloperPriview.shared.listings[0])
}
