//
//  Router.swift
//  Coordinator
//
//  Created by YYang1 on 16/7/21.
//

import UIKit

class Router: NSObject {
    
    private var rootNav: UINavigationController?
    private var transition: UIViewControllerAnimatedTransitioning?
    
    init(rootController: UINavigationController) {
        self.rootNav = rootController
        super.init()
        self.rootNav?.delegate = self
    }
    
}

extension Router: RouterProtocol {
    
    func present(_ module: Representable?, animated: Bool = true, completion: (() -> Void)? = nil) {
        guard let ctrl = module?.toPresentable() else { return }
        rootNav?.present(ctrl, animated: animated, completion: completion)
    }
    
    func push(_ module: Representable?, transition: UIViewControllerAnimatedTransitioning? = nil, animated: Bool = true, didPopped: (() -> Void)? = nil) {
        self.transition = transition
        guard let ctrl = module?.toPresentable() else { return }
        rootNav?.pushViewController(ctrl, animated: animated)
    }
    
    func popModule(transition: UIViewControllerAnimatedTransitioning? = nil, animated: Bool = true) {
        self.transition = transition
        rootNav?.popViewController(animated: animated)
    }
    
    func dismissModule(animated: Bool = true, completion: (() -> Void)? = nil) {
        rootNav?.dismiss(animated: animated, completion: completion)
    }

    func setRootModule(_ module: Representable?, animated: Bool = true, hideBar: Bool = false) {
        guard let ctrl = module?.toPresentable() else { return }
        rootNav?.setViewControllers([ctrl], animated: animated)
        rootNav?.isNavigationBarHidden = hideBar
    }
    
    func popToRootModule(animated: Bool = true) {
        rootNav?.popToRootViewController(animated: animated)
    }
    
    func popTo(_ module: Representable?, animated: Bool = true) {
        guard let ctrl = module?.toPresentable() else { return }
        rootNav?.popToViewController(ctrl, animated: animated)
    }
    
}

extension Router: UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return transition
    }
    
}
