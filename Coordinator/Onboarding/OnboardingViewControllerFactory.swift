//
//  OnboardingViewControllerFactory.swift
//  Coordinator
//
//  Created by YYang1 on 21/7/21.
//

import Foundation

protocol OnboardingViewControllerFactoryProtocol {
    func initializeOnboardingViewController() -> OnboardingViewController
}

extension ControllerFactory: OnboardingViewControllerFactoryProtocol {
    
    func initializeOnboardingViewController() -> OnboardingViewController {
        let ctrl = OnboardingViewController.initFromStoryboard()
        return ctrl
    }
    
}
