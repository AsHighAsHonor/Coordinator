//
//  ApplicationCoordinator.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import UIKit

class ApplicationCoordinator: BaseCoordinator {
    
    var router: RouterProtocol
    var authFactory: LoginCoordinatorFactoryProtocol
    var registerFactory: RegisterCoordinatorFactoryProtocol
    var reset1Factory: Reset1CoordinatorFactoryProtocol
    var goThough1Factory: GoThrough1CoordinatorFactoryProtocol
    var launchInstructor = LaunchInstructor.configure()
    
    init(routeable: RouterProtocol,
         authCoordinatorFactory: LoginCoordinatorFactoryProtocol,
         reset1CoordinatorFactory: Reset1CoordinatorFactoryProtocol,
         registerCoordinatorFactory: RegisterCoordinatorFactoryProtocol,
         goThough1CoordinatorFactory: GoThrough1CoordinatorFactoryProtocol) {
        router = routeable
        authFactory = authCoordinatorFactory
        registerFactory = registerCoordinatorFactory
        goThough1Factory = goThough1CoordinatorFactory
        reset1Factory = reset1CoordinatorFactory
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
        let coordinator = authFactory.makeCoordinator()
        
    }
    
    private func runOnboardingFlow() {
        
    }
    
    private func runMainFlow() {
        
    }
    
}
