//
//  ApplicationCoordinator.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import UIKit

class ApplicationCoordinator: BaseCoordinator {
    
    var router: RouterProtocol
//    var authFactory: LoginCoordinatorFactoryProtocol
//    var registerFactory: RegisterCoordinatorFactoryProtocol
//    var reset1Factory: ResetCoordinatorFactoryProtocol
//    var goThough1Factory: GoThroughCoordinatorFactoryProtocol
    var launchInstructor = LaunchInstructor.configure()
    
//    init(routeable: RouterProtocol,
//         authCoordinatorFactory: LoginCoordinatorFactoryProtocol,
//         reset1CoordinatorFactory: ResetCoordinatorFactoryProtocol,
//         registerCoordinatorFactory: RegisterCoordinatorFactoryProtocol,
//         goThough1CoordinatorFactory: GoThroughCoordinatorFactoryProtocol) {
//        router = routeable
//        authFactory = authCoordinatorFactory
//        registerFactory = registerCoordinatorFactory
//        goThough1Factory = goThough1CoordinatorFactory
//        reset1Factory = reset1CoordinatorFactory
//    }
    
    init(routeable: RouterProtocol) {
        router = routeable
    }
    
    func start() {
        switch launchInstructor {
        case .onboarding:
            runOnboardingFlow()
        case .auth:
            runAuthFlow()
        case .main:
            runMainFlow()
        }
    }
    
    private func runAuthFlow() {
        let coordinator = LoginCoordinatorFactory().makeCoordinator(router: router,
                                                      controllerFacotry: ControllerFactory())
        coordinator.finishFlow = { [weak self, weak coordinator] _ in
            self?.removeDependency(coordinator)
            self?.launchInstructor = LaunchInstructor.configure(tutorialWasShown: true, isAutorized: true)
            self?.start()
        }
        addDependency(coordinator)
        coordinator.start()
    }
    
    private func runOnboardingFlow() {
        
    }
    
    private func runMainFlow() {
        
    }
    
    deinit {
        print(self)
    }
    
}
