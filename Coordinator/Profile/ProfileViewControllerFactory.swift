//
//  ProfileViewControllerFactory.swift
//  Coordinator
//
//  Created by YYang1 on 26/7/21.
//

import Foundation

protocol ProfileViewControllerFactoryProtocol {
    func initializeProfileViewController() -> ProfileViewController
}

extension ControllerFactory: ProfileViewControllerFactoryProtocol {
    
    func initializeProfileViewController() -> ProfileViewController {
        let ctrl = ProfileViewController.initFromStoryboard()
        return ctrl
    }
    
}
