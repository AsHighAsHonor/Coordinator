//
//  GoThroughViewControllerFactory.swift
//  Coordinator
//
//  Created by YYang1 on 26/7/21.
//

import Foundation

protocol GoThrough1ViewControllerFactoryProtocol {
    func initializeGoThorough1ViewController() -> GoThrough1ViewController
}

extension ControllerFactory: GoThrough1ViewControllerFactoryProtocol {
    
    func initializeGoThorough1ViewController() -> GoThrough1ViewController {
        let ctrl = GoThrough1ViewController.initFromStoryboard()
        return ctrl
    }
    
}

protocol GoThrough2ViewControllerFactoryProtocol {
    func initializeGoThorough2ViewController() -> GoThrough2ViewController
}

extension ControllerFactory: GoThrough2ViewControllerFactoryProtocol {
    
    func initializeGoThorough2ViewController() -> GoThrough2ViewController {
        let ctrl = GoThrough2ViewController.initFromStoryboard()
        return ctrl
    }
    
}
