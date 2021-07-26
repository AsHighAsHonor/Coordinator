//
//  ApplicationCoordinator.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import UIKit

class ApplicationCoordinator: BaseCoordinator {
    
    var router: RouterProtocol
    var launchInstructor = LaunchInstructor.configure()
    
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
            self?.launchInstructor = LaunchInstructor.configure(tutorialWasShown: false, isAutorized: true)
            self?.start()
        }
        addDependency(coordinator)
        coordinator.start()
    }
    
    private func runOnboardingFlow() {
        let coordinator = OnboardingCoordinatorFactory().makeCoordinator(router: router, controllerFacotry: ControllerFactory())
        coordinator.finishFlow = { [weak self, weak coordinator] _ in
            self?.launchInstructor = LaunchInstructor.configure(tutorialWasShown: true, isAutorized: true)
            self?.removeDependency(coordinator)
            self?.start()
        }
        addDependency(coordinator)
        coordinator.start()
    }
    
    private func runMainFlow() {
        let coordinator = TabBarCoordinatorFactory().makeCoordinator(router: router, controllerFacotry: ControllerFactory())
//        coordinator.finishFlow = { [weak self, weak coordinator] _ in
//            self?.launchInstructor = LaunchInstructor.configure(tutorialWasShown: true, isAutorized: true)
//            self?.removeDependency(coordinator)
//            self?.start()
//        }
        addDependency(coordinator)
        router.setRootModule(coordinator.tabCtrl)
        coordinator.start()
    }
    
    deinit {
        print(self)
    }
    
}
