//
//  LocationView.swift
//  MapJourneySwiftUI
//
//  Created by Sabr on 22.06.2024.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    @State var coordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    var body: some View {
        Map(coordinateRegion: $coordinateRegion)
            .ignoresSafeArea()
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}
