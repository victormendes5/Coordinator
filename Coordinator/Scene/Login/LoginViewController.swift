//
//  LoginViewController.swift
//  Coordinator
//
//  Created by João Mendes | Stone on 03/01/19.
//  Copyright © 2019 João Mendes | Stone. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    private let navigator: LoginNavigator

    init(navigator: LoginNavigator) {
        self.navigator = navigator
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func handleLoginButtonTap() {
        let user = User()
        self.navigator.navigate(to: .loginCompleted(user: user))
        self.target(for: .first)
    }
    
    private func handleForgotPasswordButtonTap() {
        self.navigator.navigate(to: .forgotPassword)
        self.target(for: .second)
    }
    
    private func handleSignUpButtonTap() {
        self.navigator.navigate(to: .signup)
        self.target(for: .third)
    }
    
    func target(for destination: Requests) {
        let url = destination.baseURL.absoluteString
        let path = destination.path
        print(url + path)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
