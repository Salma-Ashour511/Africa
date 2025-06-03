//
//  VideoListView.swift
//  Africa
//
//  Created by V17SAshour1 on 29/05/2025.
//

import SwiftUI

struct VideoListView: View {
    var videos: [Video] = Bundle.main.decode(file: "videos.json")
    
    
    var body: some View {
        NavigationView {
            List(videos) { video in
                VideoListItem(video: video)
                    .padding(.vertical, 8)
            }
            .listStyle(.insetGrouped)
            .navigationBarTitle("Videos", displayMode: .inline)
        }
    }
}

#Preview {
    VideoListView()
}
