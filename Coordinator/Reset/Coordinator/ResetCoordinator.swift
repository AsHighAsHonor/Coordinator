//
//  ResetCoordinator.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import Foundation


class ResetCoordinator: BaseCoordinator, CoordinatorFlowCompleteProtocol {
    
    typealias Result = Any?
    
    var finishFlow: ((Any?) -> Void)?
    var router: RouterProtocol
    var controllerFactory: ResetViewControllerFactoryProtocol
    
    init(router: RouterProtocol,
         controllerFactory: ResetViewControllerFactoryProtocol) {
        self.router = router
        self.controllerFactory = controllerFactory
    }
    
    func start() {
        setupReset1Controller()
    }
    
    func setupReset1Controller() {
        let ctrl = controllerFactory.initializeReset1ViewController()
        ctrl.nextHandler = { [weak self] in
            self?.setupReset2Controller()
        }
        router.push(ctrl)
    }

    func setupReset2Controller() {
        let ctrl = controllerFactory.initializeReset2ViewController()
        ctrl.doneHandler = { [weak self] in
            self?.finishFlow?(nil)
        }
        router.push(ctrl)
    }
    
    
    deinit {
        print(self)
    }
    
}
