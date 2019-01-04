//
//  LoginNavigator.swift
//  Coordinator
//
//  Created by João Mendes | Stone on 03/01/19.
//  Copyright © 2019 João Mendes | Stone. All rights reserved.
//

import UIKit

class LoginNavigator: Navigator {
    
    enum Destination {
        case loginCompleted(user: User)
        case forgotPassword
        case signup
    }
    
    private weak var navigationController: UINavigationController?
    private let viewControllerFactory: LoginViewControllerFactory
    
    init(navigationController: UINavigationController,
         viewControllerFactory: LoginViewControllerFactory) {
        self.navigationController = navigationController
        self.viewControllerFactory = viewControllerFactory
    }
    
    func navigate(to destination: Destination) {
        let viewController = makeViewController(for: destination)
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func makeViewController(for destination: Destination) -> UIViewController {
        switch destination {
        case .loginCompleted(let user):
            return viewControllerFactory.makeWelcomeViewController(forUser: user)
        case .forgotPassword:
            return viewControllerFactory.makePasswordResetViewController()
        case .signup:
            return viewControllerFactory.makeSignUpViewController()
        }
    }
    
}
