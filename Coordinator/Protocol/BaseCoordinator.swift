//
//  BaseCoordinator.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import Foundation

class BaseCoordinator: CoordinatorProtocol {
    
    var childCoordinators = [CoordinatorProtocol]()
    
    func addDependency(_ coordinator: CoordinatorProtocol) {
        for element in childCoordinators {
            if element === coordinator { return }
        }
        childCoordinators.append(coordinator)
    }
    
    func removeDependency(_ coordinator: CoordinatorProtocol?) {
        guard childCoordinators.isEmpty == false, let coordinator = coordinator else { return }
        
        for (index, element) in childCoordinators.enumerated() {
            if element === coordinator {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}
