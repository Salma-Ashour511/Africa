//
//  MainView.swift
//  Africa
//
//  Created by V17SAshour1 on 29/05/2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            AnimalListView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            
            VideoListView()
                 .tabItem {
                     Image(systemName: "play.rectangle")
                     Text("Watch")
                 }
            
            MapView()
                 .tabItem {
                     Image(systemName: "map")
                     Text("Locations")
                 }
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
        } //: TAP
    }
}

#Preview {
    MainView()
}
