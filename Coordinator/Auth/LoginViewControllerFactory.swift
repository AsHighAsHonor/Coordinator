//
//  LoginViewControllerFactory.swift
//  Coordinator
//
//  Created by YYang1 on 16/7/21.
//

import Foundation

protocol LoginViewControllerFactoryProtocol {
    func initializeLoginViewController() -> LoginViewController 
}

extension ControllerFactory: LoginViewControllerFactoryProtocol {
    
    func initializeLoginViewController() -> LoginViewController {
        let ctrl = LoginViewController.initFromStoryboard()
        return ctrl
    }
    
}
