//
//  SearchResultsResponse.swift
//  SpotifyCloneApp
//
//  Created by Kadir Yildiz on 6/8/2024.
//

import Foundation

struct SearchResultsResponse: Codable {
    let albums: SearchAlbumResponse
    let artists: SearchArtistsResponse
    let playlists: SearchPlaylistsResponse
    let tracks: SearchTracksResponse
}

struct SearchAlbumResponse: Codable {
    let items: [Album]
}

struct SearchArtistsResponse: Codable {
    let items: [Artist]
}

struct SearchPlaylistsResponse: Codable {
    let items: [Playlists]
}

struct SearchTracksResponse: Codable {
    let items: [AudioTrack]
}

