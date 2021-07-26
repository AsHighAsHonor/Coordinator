//
//  TabBarCoordinatorFactory.swift
//  Coordinator
//
//  Created by YYang1 on 26/7/21.
//

import Foundation

protocol TabBarCoordinatorFactoryProtocol: CoordinatorFactoryProtocol {
    func makeCoordinator(router: RouterProtocol,
                        controllerFacotry: TabBarViewControllerFactoryProtocol) -> TabBarCoordinator
}

class TabBarCoordinatorFactory: TabBarCoordinatorFactoryProtocol {
   
    func makeCoordinator(router: RouterProtocol,
                         controllerFacotry: TabBarViewControllerFactoryProtocol) -> TabBarCoordinator {
        let coordinator = TabBarCoordinator(router: router, controllerFactory: controllerFacotry )
        return coordinator
    }
}
