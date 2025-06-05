//
//  MapAnnotaionView.swift
//  Africa
//
//  Created by V17SAshour1 on 04/06/2025.
//

import SwiftUI

struct MapAnnotaionView: View {
    // MARK: - PROPERTIES
    var location: NationalParkLocation
    @State private var animation = 0.0
    
    // MARK: - BODY
    var body: some View {
        
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
        }
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
        
        
    }
}

// MARK: - PREVIEW
#Preview {
    let locations: [NationalParkLocation] = Bundle.main.decode(file: "locations.json")
    MapAnnotaionView(location: locations[0])
}
