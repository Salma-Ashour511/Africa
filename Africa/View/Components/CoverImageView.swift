//
//  CoverImageView.swift
//  Africa
//
//  Created by V17SAshour1 on 29/05/2025.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - PROPERTIES
    var coverImages: [CoverImage] = Bundle.main.decode(file: "covers.json")
    
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(coverImages) { image in
                Image(image.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

//MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 400, height: 300)) {
    CoverImageView()
}
