//
//  LocationViewModel.swift
//  MapJourneySwiftUI
//
//  Created by Sabr on 22.06.2024.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    @Published var locations: [Location]
    @Published var showLocationList: Bool = false
    @Published var locationPoint: Location {
        didSet {
            updateMapRegion(location: locationPoint)
        }
    }
    @Published var coordinateRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init() {
        let initialLocation = LocationsDataService.locations
        self.locations = initialLocation
        self.locationPoint = initialLocation.first!
        updateMapRegion(location: self.locationPoint)
    }
    
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeIn) {
            coordinateRegion = MKCoordinateRegion(center: location.coordinates, span: mapSpan)
        }
    }
    
    func toogleLocationList() {
        withAnimation(.easeIn) {
            showLocationList.toggle()
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation(.easeIn) {
            locationPoint = location
            showLocationList = false
        }
    }
    
    func buttonNextLocationPressed() {
        guard let currentIndex = locations.firstIndex(where: { $0 == locationPoint }) else { return }
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            guard let firstLocation = locations.first else { return }
            showNextLocation(location: firstLocation)
            return
        }
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
        
    }
}
