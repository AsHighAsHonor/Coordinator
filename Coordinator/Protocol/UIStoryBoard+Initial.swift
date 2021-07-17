//
//  UIStoryBoard+initial.swift
//  Coordinator
//
//  Created by YYang1 on 16/7/21.
//

import UIKit

public protocol StoryboardInitializable {
    static var storyboardIdentifier: String { get }
}

public extension StoryboardInitializable where Self: UIViewController {
    
    static var storyboardIdentifier: String {
        return String(describing: Self.self)
    }
    
    static func initFromStoryboard(name: String? = storyboardIdentifier) -> Self {
        let storyboard = UIStoryboard(name: name!, bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }
}

public extension UIStoryboard {
    
    static func loadController(ctrlName: String, storyboard: String) -> UIViewController {
        
        let sb = UIStoryboard.init(name: storyboard, bundle: nil)// swiftlint:disable:this identifier_name
        return sb.instantiateViewController(withIdentifier: ctrlName)
    }
    
}
