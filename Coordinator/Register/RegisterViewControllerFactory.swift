//
//  RegisterViewControllerFactory.swift
//  Coordinator
//
//  Created by YYang1 on 21/7/21.
//

import Foundation

protocol RegisterViewControllerFactoryProtocol {
    func initializeRegisterController() -> RegisterViewController
}

extension ControllerFactory: RegisterViewControllerFactoryProtocol {
    
    func initializeRegisterController() -> RegisterViewController {
        let ctrl = RegisterViewController.initFromStoryboard()
        return ctrl
    }
    
}
