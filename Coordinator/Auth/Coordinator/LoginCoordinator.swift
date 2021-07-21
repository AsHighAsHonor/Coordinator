//
//  LoginCoordinator.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import Foundation

class LoginCoordinator: BaseCoordinator, CoordinatorFlowCompleteProtocol {
    
    typealias Result = Any?
    var finishFlow: ((Any?) -> Void)?
    var router: RouterProtocol
    var ctrlFactory: LoginViewControllerFactoryProtocol
    
    init(router: RouterProtocol,
         controllerFactory: LoginViewControllerFactoryProtocol) {
        self.router = router
        self.ctrlFactory = controllerFactory
    }
    
    func start() {
        setupLoginViewController()
    }
    
    func setupLoginViewController() {
        let ctrl = ctrlFactory.initializeLoginViewController()
        ctrl.resetHandler = { [weak self] in
            self?.runForgetFlow()
        }
        ctrl.registerHandler = { [weak self] in
            self?.runRegisterFlow()
        }
        router.setRootModule(ctrl)
    }
    
    func runForgetFlow() {
      let coordinator = ResetCoordinatorFactory().makeCoordinator(router: router, resetControllerFactory: ControllerFactory())
        coordinator.start()
        addDependency(coordinator)
        coordinator.finishFlow = { [weak self, weak coordinator] _ in
            self?.router.popToRootModule()
            self?.removeDependency(coordinator)
        }
    }
    
    func runRegisterFlow() {
        let coordinator = RegisterCoordinatorFactory().makeCoordinator(router: router, controllerFacotry: ControllerFactory())
        coordinator.finishFlow = { [weak self, weak coordinator] _ in
            self?.removeDependency(coordinator)
            self?.finishFlow?(nil)
        }
        addDependency(coordinator)
        coordinator.start()
    }
    
    deinit {
        print(self)
    }
    
}
