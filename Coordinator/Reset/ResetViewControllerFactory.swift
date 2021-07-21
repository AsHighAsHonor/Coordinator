//
//  ResetViewControllerFactory.swift
//  Coordinator
//
//  Created by YYang1 on 20/7/21.
//

import UIKit

protocol ResetViewControllerFactoryProtocol {
    func initializeReset1ViewController() -> Reset1ViewController
    func initializeReset2ViewController() -> Reset2ViewController
}

extension ControllerFactory: ResetViewControllerFactoryProtocol {
    
    func initializeReset2ViewController() -> Reset2ViewController {
        let ctrl = Reset2ViewController.initFromStoryboard()
        return ctrl
    }
    
    func initializeReset1ViewController() -> Reset1ViewController {
        let ctrl = Reset1ViewController.initFromStoryboard()
        return ctrl
    }
    
}
