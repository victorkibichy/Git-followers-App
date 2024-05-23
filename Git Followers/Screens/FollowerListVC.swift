//
//  FollowerListVC.swift
//  Git Followers
//
//  Created by  Bouncy Baby on 5/15/24.




//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true

        
        NetworkManager.shared.getFollwers(for: username, page: 1) { (followers, errorMesssage) in
            
            guard let followers = followers else {
                
                self.presentGFAlertOnMainThread(title: "BAD STUFF HAPPENED", message: errorMesssage!, buttonTitle: "OK")
                return
            }
            print("Followers.count = \(followers.count)")
            print(followers)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

}
