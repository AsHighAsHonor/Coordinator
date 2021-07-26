//
//  ProfileCoordinator.swift
//  Coordinator
//
//  Created by YYang1 on 26/7/21.
//

import Foundation

class ProfileCoordinator: BaseCoordinator, CoordinatorFlowCompleteProtocol {
    
    typealias Result = Any?
    var finishFlow: ((Any?) -> Void)?
    var router: RouterProtocol
    var ctrlFactory: ProfileViewControllerFactoryProtocol
    
    init(router: RouterProtocol,
         controllerFactory: ProfileViewControllerFactoryProtocol) {
        self.router = router
        self.ctrlFactory = controllerFactory
    }
    
    func start() {
        setupController()
    }
    
    func setupController() {
        let ctrl = ctrlFactory.initializeProfileViewController()
        ctrl.logoutTappedHander = { [weak self] in
            
        }
        ctrl.resetTappedHander = { [weak self] in
            
        }
        router.push(ctrl)
    }
    
   
}
