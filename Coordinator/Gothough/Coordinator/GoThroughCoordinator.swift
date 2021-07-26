//
//  GoThroughCoordinator.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import Foundation

class GoThroughCoordinator: BaseCoordinator {
    
    typealias Result = Any?
    var finishFlow: ((Any?) -> Void)?
    var router: RouterProtocol
    var ctrlFactory: GoThrough1ViewControllerFactoryProtocol & GoThrough2ViewControllerFactoryProtocol
    
    init(router: RouterProtocol,
         controllerFactory: GoThrough1ViewControllerFactoryProtocol & GoThrough2ViewControllerFactoryProtocol) {
        self.router = router
        self.ctrlFactory = controllerFactory
    }
    
    func start() {
        setupController()
    }
    
    func setupController() {
        let ctrl = ctrlFactory.initializeGoThorough1ViewController()
        ctrl.goToNextTapHandler = { [weak self] in
            self?.setupGoThrough2Controller()
        }
        router.push(ctrl)
    }
    
    func setupGoThrough2Controller() {
        let ctrl = ctrlFactory.initializeGoThorough2ViewController()
        router.push(ctrl)
    }
    
}
