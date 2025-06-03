//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by V17SAshour1 on 03/06/2025.
//

import SwiftUI
import AVKit

var videoPlayer: AVPlayer?

func playVideo(_ fileName: String, fileFormat: String) -> AVPlayer? {
    guard let url = Bundle.main.url(forResource: fileName, withExtension: fileFormat) else { return nil }
    videoPlayer =  AVPlayer(url: url)
    videoPlayer?.play()
    
    return videoPlayer
}
