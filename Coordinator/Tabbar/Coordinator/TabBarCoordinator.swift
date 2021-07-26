//
//  TabBarCoordinator.swift
//  Coordinator
//
//  Created by YYang1 on 26/7/21.
//

import UIKit

class TabBarCoordinator: BaseCoordinator, CoordinatorFlowCompleteProtocol {
    
    typealias Result = Any?
    var finishFlow: ((Any?) -> Void)?
    
    var router: RouterProtocol
    var ctrlFactory: TabBarViewControllerFactoryProtocol
    var tabCtrl: TabBarViewController?
    
    init(router: RouterProtocol,
         controllerFactory: TabBarViewControllerFactoryProtocol) {
        self.router = router
        self.ctrlFactory = controllerFactory
    }
    
    
    func start() {
        tabCtrl = ctrlFactory.initializeTabBarViewController()
        tabCtrl?.onViewDidLoad = runGoThroughFlow()
        tabCtrl?.onGoThroughFlowSelect = runGoThroughFlow()
        tabCtrl?.onProfileFlowSelect = runProfileFlow()
    }
    
    private func runGoThroughFlow() -> ((UINavigationController) -> ()) {
      return { [unowned self] navController in
        if navController.viewControllers.isEmpty == true {
            let goThroughCoordinator = GoThroughCoordinatorFactory().makeCoordinator(router: router, controllerFactory: ControllerFactory())
          self.addDependency(goThroughCoordinator)
            goThroughCoordinator.start()
        }
      }
    }
    
    private func runProfileFlow() -> ((UINavigationController) -> ()) {
      return { [unowned self] navController in
        if navController.viewControllers.isEmpty == true {
            let profileCoordinator = ProfileCoordinatorFactory().makeCoordinator(router: router, controllerFacotry: ControllerFactory())
          self.addDependency(profileCoordinator)
            profileCoordinator.start()
        }
      }
    }
    
    deinit {
        print(self)
    }
}
