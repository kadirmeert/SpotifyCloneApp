//
//  AuthResponse.swift
//  SpotifyCloneApp
//
//  Created by Kadir Yildiz on 13/7/2024.
//

import Foundation
import UIKit

struct AuthResponse: Codable {
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    let scope: String
    let token_type: String
    
}
