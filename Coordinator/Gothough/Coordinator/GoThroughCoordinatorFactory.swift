//
//  GoThroughCoordinatorFactory.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import Foundation

protocol GoThroughCoordinatorFactoryProtocol: CoordinatorFactoryProtocol {
    func makeCoordinator() -> GoThroughCoordinator
}

class GoThroughCoordinatorFactory: GoThroughCoordinatorFactoryProtocol {

    func makeCoordinator() -> GoThroughCoordinator {
        return GoThroughCoordinator()
    }
}
