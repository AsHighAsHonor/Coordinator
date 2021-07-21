//
//  ApplicationCoordinatorFactory.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import Foundation



class ApplicationCoordinatorFactory: CoordinatorFactoryProtocol {
    
    func makeCoordinator(router: RouterProtocol) -> ApplicationCoordinator {
        return ApplicationCoordinator(routeable: router)
    }
}
