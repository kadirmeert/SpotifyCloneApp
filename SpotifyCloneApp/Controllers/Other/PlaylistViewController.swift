//
//  PlaylistViewController.swift
//  SpotifyCloneApp
//
//  Created by Kadir Yildiz on 10/7/2024.
//

import UIKit

class PlaylistViewController: UIViewController {

    private let playList: Playlists
    
    init(playList: Playlists) {
        self.playList = playList
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = playList.name
        view.backgroundColor = .systemBackground
        
        APICaller.shared.getPlaylistDetails(for: playList) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let model): break
                case .failure(let error): break
                }
            }
        }
    }
}
