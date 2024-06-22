//
//  Location.swift
//  MapJourneySwiftUI
//
//  Created by Sabr on 21.06.2024.
//

import Foundation
import MapKit


struct Location: Identifiable{
    let id = UUID().uuidString
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String

}
