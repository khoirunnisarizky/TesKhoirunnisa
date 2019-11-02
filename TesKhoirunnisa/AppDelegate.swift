//
//  AppDelegate.swift
//  TesKhoirunnisa
//
//  Created by khoirunnisa' rizky noor fatimah on 02/11/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        var vc: UIViewController?
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        var initialViewController: UIViewController
        print(UserDefaults.standard.bool(forKey: "firstTime"))
        
        if(UserDefaults.standard.object(forKey: "firstTime") == nil){
//            initialViewController = storyboard.instantiateViewController(identifier: "FirstTimeScreen")
//            UserDefaults.standard.set(true, forKey: "firstTime")
//            UserDefaults.standard.synchronize()
            let launchStoryBoard = UIStoryboard(name: "Masuk", bundle: nil)
            vc = launchStoryBoard.instantiateViewController(withIdentifier: "FirstTimeScreen")
        
        } else {
//            initialViewController = storyboard.instantiateViewController(withIdentifier: "Dashboard")
            let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
            vc = mainStoryBoard.instantiateInitialViewController()!
            
        }
        
        let navigationController = UINavigationController(rootViewController: vc!)
        navigationController.navigationBar.isTranslucent = false
        navigationController.setNavigationBarHidden(true, animated: false)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        return true
    }
    
//    func setFirstUse(first: Int = 1) {
//        UserDefaults.standard.set(first, forKey: K)
//    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

