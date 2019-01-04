//
//  LoginViewControllerFactory.swift
//  Coordinator
//
//  Created by João Mendes | Stone on 03/01/19.
//  Copyright © 2019 João Mendes | Stone. All rights reserved.
//

import UIKit

protocol LoginViewControllerFactory {
    func makeWelcomeViewController(forUser: User) -> WelcomeViewController
    func makePasswordResetViewController() -> PasswordResetViewController
    func makeSignUpViewController() -> SignUpViewController
}
