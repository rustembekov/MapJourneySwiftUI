//
//  LocationViewModel.swift
//  MapJourneySwiftUI
//
//  Created by Sabr on 22.06.2024.
//

import Foundation

class LocationsViewModel: ObservableObject {
    @Published var locations: [Location]
    init() {
        self.locations = LocationsDataService.locations
    }
    
    
}
