//
//  AppDelegate.swift
//  Sample
//
//  Created by Francesco Perrotti-Garcia on 7/20/17.
//  Copyright © 2017 Francesco Perrotti-Garcia. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.makeKeyAndVisible()
        
        window.rootViewController = ViewController()
        
        self.window = window
        return true
    }

}

