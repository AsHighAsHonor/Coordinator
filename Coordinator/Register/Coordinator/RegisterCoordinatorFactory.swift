//
//  RegisterCoordinatorFactory.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import Foundation

protocol RegisterCoordinatorFactoryProtocol: CoordinatorFactoryProtocol {
    func makeCoordinator(router: RouterProtocol,
                        controllerFacotry: RegisterViewControllerFactoryProtocol) -> RegisterCoordinator
}

class RegisterCoordinatorFactory: RegisterCoordinatorFactoryProtocol {

    func makeCoordinator(router: RouterProtocol,
                         controllerFacotry: RegisterViewControllerFactoryProtocol) -> RegisterCoordinator {
        return RegisterCoordinator(router: router, controllerFactory: controllerFacotry)
    }
}
