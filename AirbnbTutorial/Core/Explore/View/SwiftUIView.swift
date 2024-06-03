//
//  SwiftUIView.swift
//  AirbnbTutorial
//
//  Created by student on 28/05/24.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State private var showDestinationSerchView = false
    
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
   
    
    var body: some View {
        NavigationStack{
            
            if showDestinationSerchView{
                DestinationSearchView(show: $showDestinationSerchView)
            } else {
                
                
                ScrollView{
                    
                    
                    
                    Search_Filterbar()
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinationSerchView.toggle()
                            }
                        }
                    LazyVStack(spacing: 32){
                        ForEach(viewModel.listing){ listing in
                            
                            NavigationLink(value: listing){
                                ListingItemView(listing: listing)
                                
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                            
                        }
                        
                    }
                    .padding()
                }
                .navigationDestination(for: Listing.self) { listing in
                    
                    DetailsView( listing: listing)
                        
                        .navigationBarBackButtonHidden()
                    
                }
                
                
            }
            
        }
        
    }
}

#Preview {
    SwiftUIView()
}
