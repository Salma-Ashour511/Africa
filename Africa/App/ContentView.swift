//
//  ContentView.swift
//  Africa
//
//  Created by V17SAshour1 on 29/05/2025.
//

import SwiftUI

struct ContentView: View {
    let animals: [Animal] = Bundle.main.decode(file: "animals.json")
    var body: some View {
        VStack {
            NavigationView {
                List {
                    CoverImageView()
                        .frame(height: 300)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                    ForEach(animals){ animal in
                        NavigationLink {
                            AnimalDetailView(animal: animal)
                        } label: {
                            AnimalListItemView(animal: animal)
                        }
                    }
                }
                .navigationBarTitle("Africa", displayMode: .large)
                .scrollIndicators(.hidden)
            }
        }
    }
}

#Preview {
    ContentView()
}
