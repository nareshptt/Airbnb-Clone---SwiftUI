//
//  DeveloperPriview.swift
//  AirbnbTutorial
//
//  Created by student on 31/05/24.
//

import Foundation

class DeveloperPriview{
    
    static let  shared = DeveloperPriview()
    
    var listings: [Listing] = [
        .init(
            
            id: NSUUID().uuidString, owenerUid: NSUUID().uuidString, owenerName: "John Smith", owenerImageUrl: "male-profile-photo", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 4, numberOfBeds: 4, numberOfpernight: 567, latitude: -80.1936, longitude: -80.1936, imageUrl: ["h5", "list1"], address: "124 Main St", city: "Miami", state: "Florida", title: "Miami Villa", rating: 4.86, features: [.selfCheckIn, .superhost], amenities: [.wifi, .alarmsyatem, .balcony,], type: .villa
        
        ),
        .init(
            
            id: NSUUID().uuidString, owenerUid: NSUUID().uuidString, owenerName: "Harsh tank", owenerImageUrl: "male-profile-photo", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 4, numberOfBeds: 4, numberOfpernight: 764, latitude: -80.1936, longitude: -80.1936, imageUrl: ["h3", "list3"], address: "18 Salisbury Rd, Tsim Sha Tsui, Hong Kong", city: "Hong Kong", state: "Hong Kong", title: "Rosewood Hong Kong", rating: 7.76, features: [.selfCheckIn, .superhost], amenities: [.wifi, .alarmsyatem, .balcony,], type: .villa
        
        ),
        .init(
            
            id: NSUUID().uuidString, owenerUid: NSUUID().uuidString, owenerName: "Sumit shah", owenerImageUrl: "male-profile-photo", numberOfBedrooms: 3, numberOfBathrooms: 2, numberOfGuests: 3, numberOfBeds: 3, numberOfpernight: 432, latitude: -80.1936, longitude: -80.1936, imageUrl: ["h2", "list2"], address: "Moltrasio CO, Besana,", city: "Besana,", state: "Italy", title: "Passalacqua Villa", rating: 5.76, features: [.selfCheckIn, .superhost], amenities: [.wifi, .alarmsyatem, .balcony,], type: .villa
        
        ),
        .init(
            
            id: NSUUID().uuidString, owenerUid: NSUUID().uuidString, owenerName: "Harsh tank", owenerImageUrl: "male-profile-photo", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 4, numberOfBeds: 4, numberOfpernight: 764, latitude: -80.1936, longitude: -80.1936, imageUrl: ["list1", "h2"], address: "18 Salisbury Rd, Tsim Sha Tsui, Hong Kong", city: "Hong Kong", state: "Hong Kong", title: "Rosewood Hong Kong", rating: 4.76, features: [.selfCheckIn, .superhost], amenities: [.wifi, .alarmsyatem, .balcony,], type: .villa
        
        ),
        .init(
            
            id: NSUUID().uuidString, owenerUid: NSUUID().uuidString, owenerName: "Joy raj", owenerImageUrl: "male-profile-photo", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 4, numberOfBeds: 4, numberOfpernight: 764, latitude: -80.1936, longitude: -80.1936, imageUrl: ["h4", "h5"], address: "Khet Sathon, Bangkok 10120, Thailand", city: "Bangkok", state: "Thailand", title: "Seasons Bangkok at Chao Phraya River", rating: 3.34, features: [.selfCheckIn, .superhost], amenities: [.wifi, .alarmsyatem, .balcony,], type: .villa
        
        ),
        .init(
            
            id: NSUUID().uuidString, owenerUid: NSUUID().uuidString, owenerName: "Dpak panday", owenerImageUrl: "male-profile-photo", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 4, numberOfBeds: 4, numberOfpernight: 764, latitude: -80.1936, longitude: -80.1936, imageUrl: ["list4", "list3"], address: "Ōtemachi, Chiyoda City, Tokyo 100-0004, Japan", city: "Chiyoda", state: "Tokyo", title: "Aman Tokyo", rating: 5.56, features: [.selfCheckIn, .superhost], amenities: [.wifi, .alarmsyatem, .balcony,], type: .villa
        
        ),
    
    
    ]
}
