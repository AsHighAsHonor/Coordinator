//
//  RouterProtocol.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import UIKit

protocol RouterProtocol {
   
    func present(_ module: Representable?, animated: Bool, completion: (() -> Void)?)
    func push(_ module: Representable?, transition: UIViewControllerAnimatedTransitioning?, animated: Bool, didPopped: (() -> Void)?)
    
    func popModule(transition: UIViewControllerAnimatedTransitioning?, animated: Bool)
    func dismissModule(animated: Bool, completion: (() -> Void)?)
    
    func setRootModule(_ module: Representable?, animated: Bool, hideBar: Bool)
    
    func popToRootModule(animated: Bool)
    func popTo(_ module: Representable?, animated: Bool)
}

extension RouterProtocol {
    
    func present(_ module: Representable?, animated: Bool = true, completion: (() -> Void)? = nil) {
       present(module, animated: animated, completion: completion)
    }
    
    func push(_ module: Representable?, transition: UIViewControllerAnimatedTransitioning? = nil, animated: Bool = true, didPopped: (() -> Void)? = nil) {
        push(module, transition: transition, animated: animated, didPopped: didPopped)
    }
    
    func popModule(transition: UIViewControllerAnimatedTransitioning? = nil, animated: Bool = true) {
        popModule(transition: transition, animated: animated)
    }
    
    func dismissModule(animated: Bool = true, completion: (() -> Void)? = nil) {
       dismissModule(animated: animated, completion: completion)
    }

    func setRootModule(_ module: Representable?, animated: Bool = true, hideBar: Bool = false) {
        setRootModule(module, animated: animated, hideBar: hideBar)
    }
    
    func popToRootModule(animated: Bool = true) {
        popToRootModule(animated: animated)
    }
    
    func popTo(_ module: Representable?, animated: Bool = true) {
       popTo(module, animated: animated)
    }
    
}
