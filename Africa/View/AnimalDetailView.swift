//
//  AnimalDetailView.swift
//  Africa
//
//  Created by V17SAshour1 on 29/05/2025.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: - PROPERTIES
    var animal: Animal
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                //TITLe
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.vertical, 8)
                    .foregroundStyle(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                // HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .foregroundStyle(.accent)
                    .padding(.horizontal)
                //GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingTitle: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                // DESCRIPTION
                
                // MAP
                
                // LINK
            }
            .navigationTitle("Learn more about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode(file: "animals.json")
    NavigationView {
        AnimalDetailView(animal: animals[0])
    }
    
}
