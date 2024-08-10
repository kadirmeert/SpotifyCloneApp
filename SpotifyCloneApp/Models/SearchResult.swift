//
//  SearchResult.swift
//  SpotifyCloneApp
//
//  Created by Kadir Yildiz on 10/8/2024.
//

import Foundation


enum SearchResult {
    case artist(model: Artist)
    case album(model: Album)
    case track(model: AudioTrack)
    case playlist(model: Playlists)
}
