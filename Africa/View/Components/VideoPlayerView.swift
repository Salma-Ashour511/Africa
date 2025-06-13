//
//  VideoPlayerView.swift
//  Africa
//
//  Created by V17SAshour1 on 03/06/2025.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - PROPERTIES
    var selectedVideo: String
    var videoTitle: String
    
    // MARK: - BODY
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(selectedVideo, fileFormat: "mp4"))
        }
        .overlay(alignment: .topLeading) {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding(.top, 6)
                .padding(.horizontal, 8)
        }
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

// MARK: - PREVIEW
#Preview {
    VideoPlayerView(selectedVideo: "lion", videoTitle: "Lion")
}
