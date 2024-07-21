//
//  Artist.swift
//  SpotifyCloneApp
//
//  Created by Kadir Yildiz on 10/7/2024.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let external_urls: [String: String]
}
