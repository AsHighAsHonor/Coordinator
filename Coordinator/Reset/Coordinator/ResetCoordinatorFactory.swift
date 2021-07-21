//
//  ResetCoordinatorFactory.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import Foundation

protocol ResetCoordinatorFactoryProtocol: CoordinatorFactoryProtocol {
    func makeCoordinator(router: RouterProtocol, resetControllerFactory: ResetViewControllerFactoryProtocol) -> ResetCoordinator
}

class ResetCoordinatorFactory: ResetCoordinatorFactoryProtocol {
    func makeCoordinator(router: RouterProtocol, resetControllerFactory: ResetViewControllerFactoryProtocol) -> ResetCoordinator {
        return ResetCoordinator(router: router, controllerFactory: resetControllerFactory)
    }
    
}
