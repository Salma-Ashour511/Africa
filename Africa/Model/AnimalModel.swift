//
//  AnimalModel.swift
//  Africa
//
//  Created by V17SAshour1 on 29/05/2025.
//
import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
