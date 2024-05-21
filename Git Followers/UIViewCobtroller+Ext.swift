//
//  UIViewCobtroller+Ext.swift
//  Git Followers
//
//  Created by  Bouncy Baby on 5/20/24.
//

import Foundation
import UIKit

extension UIViewController {
    
   func presentGFAlertOnMainThread(title: String, message: String, buttonTitle:String) {
       DispatchQueue.main.async {
           let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
           alertVC.modalPresentationStyle = .overFullScreen
           alertVC.modalTransitionStyle = .crossDissolve
           self.present(alertVC, animated: true)
           
       }
    }
    
}
