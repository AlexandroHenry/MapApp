//
//  LocationsViewModel.swift
//  MapApp
//
//  Created by Seungchul Ha on 2023/03/21.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
	
	// All loaded locations
	@Published var locations: [Location]
	
	// Current locations on map
	@Published var mapLocation: Location {
		didSet {
			updateMapRegion(location: mapLocation)
		}
	}
	
	// Current region on map
	@Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
	
	// Show list of locations
	@Published var showLocationsList: Bool = false
	
	// Show Location Detail via sheet
	@Published var sheetLocation: Location? = nil
	
	let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
	
	init() {
		let locations = LocationsDataService.locations
		self.locations = locations
		self.mapLocation = locations.first!
		
		self.updateMapRegion(location: locations.first!)
	}
	
	private func updateMapRegion(location: Location) {
		withAnimation(.easeInOut) {
			mapRegion = MKCoordinateRegion(
				center: location.coordinates,
				span: mapSpan
			)
		}
	}
	
	func toggleLocationsList() {
		withAnimation(.easeInOut) {
			showLocationsList.toggle()
		}
	}
	
	func showNextLocation(location: Location) {
		withAnimation(.easeInOut) {
			mapLocation = location
			showLocationsList = false
		}
	}
	
	func nextButtonPressed() {
		// Get the current Index
		guard let currentIndex = locations.firstIndex(where: { $0 == mapLocation }) else {
			print("Could not find current index in locations array! Should never happen.")
			return
		}
		
		// Check if the nextIndex is valid
		let nextIndex = currentIndex + 1
		
		guard locations.indices.contains(nextIndex) else {
			// Next Index is not valid
			// Restart from 0
			
			guard let firstLocation = locations.first else { return }
			showNextLocation(location: firstLocation)
			return
		}
		
		// Next index is valid
		let nextLocation = locations[nextIndex]
		showNextLocation(location: nextLocation)
	}
}
