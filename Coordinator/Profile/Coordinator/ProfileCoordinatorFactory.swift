//
//  ProfileCoordinatorFactory.swift
//  Coordinator
//
//  Created by YYang1 on 26/7/21.
//

import Foundation

protocol ProfileCoordinatorFactoryProtocol: CoordinatorFactoryProtocol {
    func makeCoordinator(router: RouterProtocol,
                        controllerFacotry: ProfileViewControllerFactoryProtocol) -> ProfileCoordinator
}

class ProfileCoordinatorFactory: ProfileCoordinatorFactoryProtocol {
   
    func makeCoordinator(router: RouterProtocol,
                         controllerFacotry: ProfileViewControllerFactoryProtocol) -> ProfileCoordinator {
        let coordinator = ProfileCoordinator(router: router, controllerFactory: controllerFacotry)
        return coordinator
    }
}
