//
//  LoginCoordinator.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import Foundation

class LoginCoordinator: BaseCoordinator {
    
    var router: RouterProtocol
    var coordinatorFactory: LoginCoordinatorFactoryProtocol
    var controllerFactory: LoginViewControllerFactoryProtocol
    
    init(router: RouterProtocol, coordinatorFactory: LoginCoordinatorFactoryProtocol, controllerFactory: LoginViewControllerFactoryProtocol) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
        self.controllerFactory = controllerFactory
    }
    
    func start() {
        setupLoginViewController()
    }
    
    func setupLoginViewController() {
        let ctrl = controllerFactory.initializeLoginViewController()
        
        router.setRootModule(ctrl)
    }
    
}
