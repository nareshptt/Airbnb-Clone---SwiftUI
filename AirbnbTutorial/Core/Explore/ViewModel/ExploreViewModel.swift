//
//  ExploreViewModel.swift
//  AirbnbTutorial
//
//  Created by student on 03/06/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listing = [Listing]()
    
    private let service: ExploreService
    
    init(service: ExploreService){
        self.service = service
        
        Task{
            await fetchListings();
        }
        
        
  }
    func fetchListings() async {
        
        do{
            self.listing = try await service.fetchLlisting()
        }catch{
            
            print("Debug: Failed fetch listing with error: \(error.localizedDescription)")
        }
        
    }

}
