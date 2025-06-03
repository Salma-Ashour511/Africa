//
//  VideoModel.swift
//  Africa
//
//  Created by V17SAshour1 on 01/06/2025.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
