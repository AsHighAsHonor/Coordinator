//
//  OnboardingCoordinatorFactory.swift
//  Coordinator
//
//  Created by YYang1 on 21/7/21.
//

import Foundation

protocol OnboardingCoordinatorFactoryProtocol: CoordinatorFactoryProtocol {
    func makeCoordinator(router: RouterProtocol,
                        controllerFacotry: OnboardingViewControllerFactoryProtocol) -> OnboardingCoordinator
}

class OnboardingCoordinatorFactory: OnboardingCoordinatorFactoryProtocol {
   
    func makeCoordinator(router: RouterProtocol,
                         controllerFacotry: OnboardingViewControllerFactoryProtocol) -> OnboardingCoordinator {
        let coordinator = OnboardingCoordinator(router: router, controllerFactory: controllerFacotry)
        return coordinator
    }
}
