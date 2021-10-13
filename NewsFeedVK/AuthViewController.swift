//
//  AuthViewController.swift
//  NewsFeedVK
//
//  Created by Larisa on 12.10.2021.
//

import UIKit

class AuthViewController: UIViewController {
    
    private var authService: AuthService!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        authService = AuthService()
        view.backgroundColor = .white
    }

    @IBAction func signInTouch(_ sender: UIButton) {
    }
    
    
}

