//
//  VideoListItem.swift
//  Africa
//
//  Created by V17SAshour1 on 02/06/2025.
//

import SwiftUI

struct VideoListItem: View {
    // MARK: - PROPERTIES
    var video: Video
    
    // MARK: - BODY
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(12)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    let videos: [Video] = Bundle.main.decode(file: "videos.json")
    
    VideoListItem(video: videos[0])
        .padding()
}
