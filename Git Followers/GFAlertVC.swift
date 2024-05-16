//
//  GFAlertVC.swift
//  Git Followers
//
//  Created by  Bouncy Baby on 5/16/24.
//

import UIKit

class GFAlertVC: UIViewController {
    
    let containerView = UIView()
    let titileLabel = GFTitleLabel(textAlignment: .center, fontSize:20)
    let messageLabel = GFBodyLabel(textAlignment: .center, fontSize: 20)
    let actionButton = GFButton(backgroundColor: .systemPink, title: "OK")
              
    
    var aletTitle: String?
    var message: String?
    var buttonTitle: String?
    
    let padding: CGFloat = 20
    
    init(title: String, message: String, buttonTitle: String) {
        super.init(nibName: nil, bundle: nil)
        self.aletTitle = title
        self.message = message
        self.buttonTitle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
            configureContainerView()
        
    }
    
    func configureContainerView() {
        view.addSubview(containerView)
        containerView.backgroundColor = .systemBackground
        containerView.layer.cornerRadius = 16
        containerView.layer.borderWidth = 2
        containerView.layer.borderColor  = UIColor.white.cgColor
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.widthAnchor.constraint(equalToConstant: 280),
            containerView.heightAnchor.constraint(equalToConstant: 220)
            
        ])
    }
        
        func configureTitleLabel() {
            containerView.addSubview(titileLabel)
            titileLabel.text = aletTitle ?? "Something Went Wrong"
            
            NSLayoutConstraint.activate([
            
                titileLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: padding),
                titileLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
                titileLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
                titileLabel.heightAnchor.constraint(equalToConstant: 28)
                                    ])
            }
    
    func comfigureActionButton() {
        
        containerView.addSubview(actionButton)
        actionButton.setTitle(buttonTitle ?? "OK", for: .normal)
        actionButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
    }
        
  @objc func dismissVC() {
        dismiss(animated: true)
    }
}
