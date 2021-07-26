//
//  TabBarViewControllerFactory.swift
//  Coordinator
//
//  Created by YYang1 on 26/7/21.
//

import UIKit

protocol TabBarViewControllerFactoryProtocol {
    func initializeTabBarViewController() -> TabBarViewController
}

extension ControllerFactory: TabBarViewControllerFactoryProtocol {
    
    func initializeTabBarViewController() -> TabBarViewController {
        let ctrl = TabBarViewController()
        return ctrl
    }
    
}
