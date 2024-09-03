//
//  LibraryAlbumsResponse.swift
//  SpotifyCloneApp
//
//  Created by Kadir Yildiz on 3/9/2024.
//

import Foundation

struct LibraryAlbumsResponse: Codable {
    let items : [SavedAlbum]
}

struct SavedAlbum: Codable {
    let added_at: String
    let album: Album
}
