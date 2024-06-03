//
//  TabbarView.swift
//  AirbnbTutorial
//
//  Created by student on 31/05/24.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView{
            SwiftUIView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            
            WishlistView()
                .tabItem { Label("Wishlist", systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
            
        }
    }
}

#Preview {
    TabbarView()
}
