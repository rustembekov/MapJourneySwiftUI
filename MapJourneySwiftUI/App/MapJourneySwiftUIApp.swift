//
//  MapJourneySwiftUIApp.swift
//  MapJourneySwiftUI
//
//  Created by Sabr on 21.06.2024.
//

import SwiftUI

@main
struct MapJourneySwiftUIApp: App {
    @StateObject private var vm = LocationsViewModel()

    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
