//
//  WelcomeViewController.swift
//  SpotifyCloneApp
//
//  Created by Kadir Yildiz on 10/7/2024.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    private let signInbutton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Sign In with Spotify", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Spotify"
        view.backgroundColor = .systemGreen
        view.addSubview(signInbutton)
        signInbutton.addTarget(self, action: #selector(didTabSignIn), for: .touchUpInside)
       
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        signInbutton.frame = CGRect(
            x: 20,
            y: view.height-50-view.safeAreaInsets.bottom,
            width: view.width-40,
            height: 50)
    }
    
    @objc func didTabSignIn() {
        let vc = AuthViewController()
        vc.completionHandler = { [weak self] success in
            DispatchQueue.main.async {
                self?.handleSignIn(success: success)
            }
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func handleSignIn(success: Bool) {
        // Log user in or yell at them for error 
        guard success else {
            let alert = UIAlertController(title: "Oops", message: "Something went wrong please try again", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
            present(alert, animated: true)
            return
        }
        
        let mainAppTabBarVC = TabBarViewController()
        mainAppTabBarVC.modalPresentationStyle = .fullScreen
        present(mainAppTabBarVC, animated: true)
    }
}
