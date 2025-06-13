//
//  AnimalGridView.swift
//  Africa
//
//  Created by V17SAshour1 on 13/06/2025.
//

import SwiftUI

struct AnimalGridView: View {
    var animal: Animal
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode(file: "animals.json")
    AnimalGridView(animal: animals[0])
}
