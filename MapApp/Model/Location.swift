//
//  Location.swift
//  MapApp
//
//  Created by Seungchul Ha on 2023/03/21.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {
	let name: String
	let cityName: String
	let coordinates: CLLocationCoordinate2D
	let description: String
	let imageNames: [String]
	let link: String
	
	// Identifiable
	var id: String {
		
		// name = "Colosseum"
		// cityName = "Rome"
		// id = "ColosseumRome"
		
		name + cityName
	}
	
	// Equatable
	// lhs = Left hand side, rhs = Right hand side
	static func == (lhs: Location, rhs: Location) -> Bool {
		lhs.id == rhs.id
	}
}
