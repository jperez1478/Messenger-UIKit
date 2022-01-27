//
//  LoginViewController.swift
//  Messenger-UIkit
//
//  Created by Jessica Perez on 1/26/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let imageview: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "chat")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"

        view.backgroundColor = .white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Register", style: .done, target: self, action: #selector(didTapRegister))
        
        //adding subviews
        view.addSubview(imageview)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let size = view.frame.size.width/3
        imageview.frame = CGRect(x: (view.frame.size.width-size)/2,
                                 y: 20, width: size, height: size)
    }
    
    //fucntion private for this class only
    @objc private func didTapRegister() {
        ///push register controller to the screen
        let vc = RegisterViewController()
        vc.title = "Create Account"
        navigationController?.pushViewController(vc, animated: true)
    }

}
