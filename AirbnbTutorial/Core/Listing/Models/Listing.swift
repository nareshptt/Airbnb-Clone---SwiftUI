//
//  Listing.swift
//  AirbnbTutorial
//
//  Created by student on 31/05/24.
//

import Foundation

struct Listing: Identifiable, Codable , Hashable{
    
    let id: String
    let owenerUid: String
    let owenerName: String
    let owenerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    let numberOfpernight: Int
    let latitude : Double
    let longitude : Double
    var imageUrl: [String]
    let address : String
    let city : String
    let state : String
    let title : String
    let rating : Double
    var features: [ListingFeature]
    var amenities: [ListingAmenities]
    let type: ListingType
    
}

enum ListingFeature: Int , Codable, Identifiable, Hashable {
    
    case selfCheckIn
    case superhost
    
    var imageName: String {
        switch self {
        case .selfCheckIn: return "door.left.hand.open"
        case .superhost: return "medal"
        }
    }
    var title: String {
        switch self {
        case .selfCheckIn: return "self check-in"
        case .superhost: return "Superhost"
        }
    }
    var subtitle: String {
        switch self {
        case .selfCheckIn: return "Check yourself in with the keypad"
        case .superhost: return "Superhost are exprienced, highly rated hosts who are commited to providing greate starts for guest"
        }
    }
    var id: Int {return self.rawValue}
}



enum ListingAmenities: Int , Codable, Identifiable, Hashable {
    
    case pool
    case kitchen
    case laundry
    case tv
    case wifi
    case office
    case alarmsyatem
    case balcony
    
    
    var title: String{
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi : return "wifi"
        case .laundry: return "Laundrty"
        case .tv: return "tv"
        case .alarmsyatem: return "Alarm System"
        case .office: return "office"
        case .balcony: return "Balcony"
      
        }
    }
    
    var imageName: String{
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi : return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmsyatem: return "checkerboard.shield"
        case .office: return "pencil.and.ruler.fill"
        case .balcony: return "building"
            
        }
    }
    
    
    var id: Int {return self.rawValue}
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townHouse: return "TownHouse"
        case .villa: return "Villa"
        }
    }
    
    var id: Int {return self.rawValue}
}
