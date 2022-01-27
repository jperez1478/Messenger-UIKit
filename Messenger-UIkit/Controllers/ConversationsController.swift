//
//  ViewController.swift
//  Messenger-UIkit
//
//  Created by Jessica Perez on 1/26/22.
//

import UIKit

class ConversationsiewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        
        if !isLoggedIn {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen   //needs to be fullscreen not as a card view 
            present(nav,animated: false)
        }
    }

}

