//
//  LocationViewModel.swift
//  MapJourneySwiftUI
//
//  Created by Sabr on 22.06.2024.
//

import Foundation
import MapKit

class LocationsViewModel: ObservableObject {
    @Published var locations: [Location]
    @Published var coordinateRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init() {
        self.locations = LocationsDataService.locations
    }
    
    private func updateMapRegion(location: Location) {
        coordinateRegion = MKCoordinateRegion(center: location.coordinates, span: mapSpan)
    }
}
