//
//  RegisterCoordinator.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import Foundation

class RegisterCoordinator: BaseCoordinator, CoordinatorFlowCompleteProtocol {
    
    typealias Result = Any?
    var finishFlow: ((Any?) -> Void)?
    
    var router: RouterProtocol
    var ctrlFactory: RegisterViewControllerFactoryProtocol
    
    init(router: RouterProtocol,
         controllerFactory: RegisterViewControllerFactoryProtocol) {
        self.router = router
        self.ctrlFactory = controllerFactory
    }
    
    func start() {
        setupRegisterController()
    }
    
    func setupRegisterController() {
        let ctrl = ctrlFactory.initializeRegisterController()
        ctrl.registerTapHandler = { [weak self] in
            self?.finishFlow?(nil)
        }
        router.push(ctrl)
    }
    
    deinit {
        print(self)
    }
}
