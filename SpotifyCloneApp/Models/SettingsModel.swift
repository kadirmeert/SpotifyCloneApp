//
//  SettingsModel.swift
//  SpotifyCloneApp
//
//  Created by Kadir Yildiz on 15/7/2024.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
    
}

struct Option {
    let title : String
    let handler : () -> Void
}
