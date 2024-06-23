//
//  LocationDetailView.swift
//  MapJourneySwiftUI
//
//  Created by Sabr on 23.06.2024.
//

import SwiftUI

struct LocationDetailView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            VStack(alignment: .leading, spacing: 16) {
                imagePreview
                titlePreview
            }
            VStack(alignment: .leading, spacing: 16) {
                buttonLearnMore
                buttonNext
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.regularMaterial)
                .offset(y: 65)
        )
        .clipped()
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.blue
                .ignoresSafeArea()
            LocationDetailView(location: LocationsDataService.locations.first!)
                .padding()
        }
        .environmentObject(LocationsViewModel())

    }
}

extension LocationDetailView {
    private var imagePreview: some View {
        ZStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 100, height: 100)
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    private var titlePreview: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(location.name)
                .font(.title2)
                .fontWeight(.black)
            
            Text(location.cityName)
                .font(.headline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var buttonLearnMore: some View {
        Button {
            vm.showLocationSheet = location
        } label: {
            Text("Learn More")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.borderedProminent)
    }
    private var buttonNext: some View {
        Button {
            vm.buttonNextLocationPressed()
        } label: {
            Text("Next")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.bordered)
    }
    
}
