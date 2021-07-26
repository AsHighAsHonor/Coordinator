//
//  TabBarViewController.swift
//  Coordinator
//
//  Created by YYang1 on 26/7/21.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {

    var onGoThroughFlowSelect: ((UINavigationController) -> ())?
    var onProfileFlowSelect: ((UINavigationController) -> ())?
    var onViewDidLoad: ((UINavigationController) -> ())?
    
    init() {
        super.init(nibName: nil, bundle: nil)
        let goThourgh = ControllerFactory().initializeGoThorough1ViewController()
        let profile = ControllerFactory().initializeProfileViewController()
        viewControllers = [goThourgh, profile]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        if let controller = customizableViewControllers?.first as? UINavigationController {
          onViewDidLoad?(controller)
        }
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
      guard let controller = viewControllers?[selectedIndex] as? UINavigationController else { return }
      
      if selectedIndex == 0 {
        onGoThroughFlowSelect?(controller)
      }
      else if selectedIndex == 1 {
        onProfileFlowSelect?(controller)
      }
    }
    
}
