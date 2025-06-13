//
//  MapView.swift
//  Africa
//
//  Created by V17SAshour1 on 29/05/2025.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTIES
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599),
            span: MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        )
    )
    
    var locations: [NationalParkLocation] = Bundle.main.decode(file: "locations.json")
    
    // MARK: - BODY
    var body: some View {
        // 1 - Basic Map
        // Map(position: $position)
        
        // 2 - Advanced Map with Pin marks
        Map(position: $position) {
            ForEach(locations) { item in
               // (A) PIN: Old style (always static)
               //MapPin(coordinate: item.location, tint: .accent)
                
               // (B) Marker: New style (always static)
               // Marker("", coordinate: item.location)
                
                // (C) Annotation: Custom Basic Annotation
                Annotation("", coordinate: item.location) {
                    MapAnnotaionView(location: item)
                }
            }
        }
    }
}

// MARK: - PREVIEW
#Preview {
    MapView()
}
