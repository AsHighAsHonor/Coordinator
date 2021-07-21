//
//  AppDelegate.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var router: Router = Router(rootController: UINavigationController())
    lazy var coordinator = ApplicationCoordinatorFactory().makeCoordinator(router: router)
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = router.rootNav!
        window?.makeKeyAndVisible()
        coordinator.start()
        return true
    }

}

