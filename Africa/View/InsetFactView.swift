//
//  InsetFactView.swift
//  Africa
//
//  Created by V17SAshour1 on 29/05/2025.
//

import SwiftUI

struct InsetFactView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(.page)
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    let animals: [Animal] = Bundle.main.decode(file: "animals.json")
    
    InsetFactView(animal: animals[0])
        .padding()
}
