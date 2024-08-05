//
//  CategoriesResponse.swift
//  SpotifyCloneApp
//
//  Created by Kadir Yildiz on 5/8/2024.
//

import Foundation

struct CategoriesResponse: Codable {
    let categories: Categories
   
}

struct Categories: Codable {
    let items: [Category]
}

struct Category: Codable {
    let id: String
    let name: String
    let icons: [APIImage]
}
