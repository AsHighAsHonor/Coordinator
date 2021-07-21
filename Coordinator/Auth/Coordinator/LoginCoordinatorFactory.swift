//
//  LoginCoordinatorFactory.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import Foundation

protocol LoginCoordinatorFactoryProtocol: CoordinatorFactoryProtocol {
    func makeCoordinator(router: RouterProtocol,
                        controllerFacotry: LoginViewControllerFactoryProtocol) -> LoginCoordinator
}

class LoginCoordinatorFactory: LoginCoordinatorFactoryProtocol {
   
    func makeCoordinator(router: RouterProtocol,
                         controllerFacotry: LoginViewControllerFactoryProtocol) -> LoginCoordinator {
        let coordinator = LoginCoordinator(router: router, controllerFactory: controllerFacotry)
        return coordinator
    }
}
