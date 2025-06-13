//
//  InsetMapView.swift
//  Africa
//
//  Created by V17SAshour1 on 31/05/2025.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    //MARK: - PROPERTIES
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599),
            span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0)
        )
    )
    
    //MARK: - BODY
    var body: some View {
        Map(position: $position)
            .overlay(alignment: .topTrailing) {
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundStyle(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundStyle(.accent)
                            .fontWeight(.bold)
                    }
                    .padding(.horizontal, 14)
                    .padding(.vertical, 10)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    )
                }
                .padding(12)
                
            }
            .frame(height: 256)
            .cornerRadius(12)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    InsetMapView()
        .padding()
}
