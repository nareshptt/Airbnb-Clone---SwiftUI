//
//  ExploreService.swift
//  AirbnbTutorial
//
//  Created by student on 31/05/24.
//

import Foundation

class ExploreService{
    
    
    func fetchLlisting() async throws -> [Listing] {
        
        return DeveloperPriview.shared.listings
        
    }
}
