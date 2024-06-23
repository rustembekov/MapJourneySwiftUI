//
//  LocationsDescriptionView.swift
//  MapJourneySwiftUI
//
//  Created by Sabr on 23.06.2024.
//

import SwiftUI
import MapKit

struct LocationsDescriptionView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    
    var body: some View {
        ScrollView {
            VStack {
                imagePreview
                VStack(alignment: .leading, spacing: 16) {
                    titlePreview
                    Divider()
                    descriptionPreview
                    Divider()
                    annotatedMap
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(alignment: .topLeading) {
            backButton
        }
    }
}

struct LocationsDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsDescriptionView(location: LocationsDataService.locations.first!)
            .environmentObject(LocationsViewModel())
    }
}

extension LocationsDescriptionView {
    
    private var imagePreview: some View {
        TabView {
            ForEach(location.imageNames, id: \.self){
                Image($0)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIDevice.current.userInterfaceIdiom == .pad ? nil : UIScreen.main.bounds.width)
                    .clipped()
            }
        }
        .frame(height: 500)
        .tabViewStyle(PageTabViewStyle())
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
    }
    
    private var titlePreview: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(location.name)
                .font(.largeTitle)
            Text(location.cityName)
                .font(.title3)
                .foregroundColor(.secondary)
        }
        .fontWeight(.semibold)
    }
    
    private var descriptionPreview: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(location.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            if let url = URL(string: location.link) {
                Link("Read more Wkipedia...", destination: url)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .tint(.blue)
            }
        }
    }
    
    private var annotatedMap: some View {
        Map(coordinateRegion: .constant(MKCoordinateRegion(
            center: location.coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))),
            annotationItems: [location]) { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .shadow(radius: 10)
            }
        }
            .allowsHitTesting(false)
            .aspectRatio(1, contentMode: .fit)
            .cornerRadius(30)
    }
    
    private var backButton: some View {
        Button {
            vm.showLocationSheet = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 5)
                .padding()
            
        }

    }
}
