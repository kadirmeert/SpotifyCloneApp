//
//  LibraryPlaylistsViewController.swift
//  SpotifyCloneApp
//
//  Created by Kadir Yildiz on 24/8/2024.
//

import UIKit

class LibraryPlaylistsViewController: UIViewController {
    
    var playlists = [Playlist]()
    
    private let noPlaylistsView = ActionLabelView()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpNoPlaylistView()
        fetchData()
       
    }
    
    private func fetchData() {
        APICaller.shared.getCurrentUserPlaylists { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let playlists):
                    self?.playlists = playlists
                    self?.UpdateUI()
                case.failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    private func setUpNoPlaylistView() {
        view.addSubview(noPlaylistsView)
        noPlaylistsView.configure(with: ActionLabelViewViewModel(text: "No Playlists", actionTitle: "Create"))
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        noPlaylistsView.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        noPlaylistsView.center = view.center
    }
    
    private func UpdateUI() {
        if playlists.isEmpty {
            //Show Label
            noPlaylistsView.isHidden = false 
        }
        else {
            //Show Table
        }
    }
}
