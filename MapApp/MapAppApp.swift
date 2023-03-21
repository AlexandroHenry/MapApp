//
//  MapAppApp.swift
//  MapApp
//
//  Created by Seungchul Ha on 2023/03/21.
//

import SwiftUI

@main
struct MapAppApp: App {
	@StateObject private var vm = LocationsViewModel()
    var body: some Scene {
        WindowGroup {
            LocationsView()
				.environmentObject(vm)
        }
    }
}
