//
//  Search&Filterbar.swift
//  AirbnbTutorial
//
//  Created by student on 28/05/24.
//

import SwiftUI

struct Search_Filterbar: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading){
                
                Text("Where to ?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Anywhere - Anyt Week - Add guest")
                    .font(.caption2)
                    .foregroundStyle(.gray
                    )
                
            }
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                   Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundColor(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical,10)
        .overlay{
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding()
    }
}

#Preview {
    Search_Filterbar()
}
