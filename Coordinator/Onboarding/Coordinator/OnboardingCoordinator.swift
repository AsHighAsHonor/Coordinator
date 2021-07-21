//
//  OnboardingCoordinator.swift
//  Coordinator
//
//  Created by YYang1 on 21/7/21.
//

import Foundation

class OnboardingCoordinator: BaseCoordinator, CoordinatorFlowCompleteProtocol {
    
    typealias Result = Any?
    
    var finishFlow: ((Any?) -> Void)?
    var router: RouterProtocol
    var ctrlFactory: OnboardingViewControllerFactoryProtocol
    
    init(router: RouterProtocol,
         controllerFactory: OnboardingViewControllerFactoryProtocol) {
        self.router = router
        self.ctrlFactory = controllerFactory
    }
    
    func start() {
        setupController()
    }
    
    func setupController() {
        let ctrl = ctrlFactory.initializeOnboardingViewController()
        ctrl.finishTapHandler = { [weak self] in
            self?.finishFlow?(nil)
        }
        router.push(ctrl)
    }
    
    deinit {
        print(self)
    }
}
