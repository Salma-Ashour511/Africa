//
//  ContentView.swift
//  Africa
//
//  Created by V17SAshour1 on 29/05/2025.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    let animals: [Animal] = Bundle.main.decode(file: "animals.json")
    @State private var isGridViewActive = false
    
    @State private var gridLayout: [GridItem] = [ GridItem(.flexible()) ]
    @State private var gridColumn: Int = 1
    @State private var toolbarItemImage = "square.grid.2x2"
    
    // MARK: - FUNCTIONS
    func gridSwitch() {
        gridColumn = gridLayout.count % 3 + 1
        gridLayout = Array(repeating: GridItem(.flexible()), count: gridColumn)
        
        // switch tool bar item image
        switch gridColumn {
        case 1:
            toolbarItemImage = "square.grid.2x2"
        case 2:
            toolbarItemImage = "square.grid.3x2"
        case 3:
            toolbarItemImage = "rectangle.grid.1x2"
        default:
            toolbarItemImage = "square.grid.2x2"
        }
    }
    
    
    // MARK: - BODY
    var body: some View {
        VStack {
            NavigationView {
                Group {
                    if !isGridViewActive {
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
                    } else {
                        ScrollView(showsIndicators: false) {
                            LazyVGrid (columns: gridLayout, alignment: .center, spacing: 10) {
                                ForEach(animals){ animal in
                                    NavigationLink {
                                        AnimalDetailView(animal: animal)
                                    } label: {
                                        AnimalGridView(animal: animal)
                                    }
                                }
                            }
                        }
                    }
                }
                .navigationBarTitle("Africa", displayMode: .large)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        HStack {
                            Button {
                                isGridViewActive = false
                            } label: {
                                Image(systemName: "square.fill.text.grid.1x2")
                                    .foregroundStyle(isGridViewActive ? .primary : Color.accentColor)
                            }
                            
                            Button {
                                isGridViewActive = true
                                gridSwitch()
                            } label: {
                                Image(systemName: toolbarItemImage)
                                    .foregroundStyle(isGridViewActive ?  Color.accentColor : .primary)
                            }
                        }

                    }
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
}
