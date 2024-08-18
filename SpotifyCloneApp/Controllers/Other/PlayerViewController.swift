//
//  PlayerViewController.swift
//  SpotifyCloneApp
//
//  Created by Kadir Yildiz on 10/7/2024.
//

import UIKit

class PlayerViewController: UIViewController {
    
    private let imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .systemBlue
        return imageView
    }()
    
    private let controlsView = PlayerControlsView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(imageView)
        view.addSubview(controlsView)
        controlsView.delegate = self
        configureBarButtons()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.width, height: view.width)
        controlsView.frame = CGRect(x: 10, y: imageView.bottom+10, width: view.width-20, height: view.height-imageView.height-view.safeAreaInsets.top-view.safeAreaInsets.bottom-15)
    }
    
    private func configureBarButtons() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(didTapClose))
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(didTapAction))

    }
    
    @objc private func didTapClose() {
        dismiss(animated: true, completion: nil)
    }
    @objc private func didTapAction() {
        dismiss(animated: true, completion: nil)
    }
}

extension PlayerViewController: PlayerControlsViewDelegate {
    
    func PlayerControlsViewDidTapPlayPause(_ playerControlsView: PlayerControlsView) {
        <#code#>
    }
    
    func PlayerControlsViewDidTapForwardButton(_ playerControlsView: PlayerControlsView) {
        <#code#>
    }
    
    func PlayerControlsViewDidTapBackButton(_ playerControlsView: PlayerControlsView) {
        <#code#>
    }
    
    
}
