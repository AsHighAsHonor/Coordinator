//
//  GoThroughCoordinatorFactory.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import Foundation

protocol GoThroughCoordinatorFactoryProtocol: CoordinatorFactoryProtocol {
    func makeCoordinator(router: RouterProtocol, controllerFactory: GoThrough1ViewControllerFactoryProtocol & GoThrough2ViewControllerFactoryProtocol) -> GoThroughCoordinator
}

class GoThroughCoordinatorFactory: GoThroughCoordinatorFactoryProtocol {

    func makeCoordinator(router: RouterProtocol, controllerFactory: GoThrough1ViewControllerFactoryProtocol & GoThrough2ViewControllerFactoryProtocol) -> GoThroughCoordinator {
        return GoThroughCoordinator(router: router, controllerFactory: controllerFactory)
    }
}
