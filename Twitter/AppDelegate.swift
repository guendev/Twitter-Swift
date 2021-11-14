//
//  AppDelegate.swift
//  Twitter
//
//  Created by Yuan on 12/11/2021.
//

import UIKit
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        
        // Override point for customization after application launch.
        
        #if DEBUG
        // Bundle(path: "/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle")?.load()
        
        // NotificationCenter.default.addObserver(forName: .init("INJECTION_BUNDLE_NOTIFICATION"), object: self, queue: .main) { _ in print(#function, "Hello")}

        
        #endif
        
        return true
    }

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


extension UIViewController {
    
    #if DEBUG
    @objc func injected() {
                for subview in view.subviews {
                    subview.removeFromSuperview()
                }
                if let sublayers = self.view.layer.sublayers {
                    for sublayer in sublayers {
                        sublayer.removeFromSuperlayer()
                    }
                }

                viewDidLoad()
            }
    
    #endif
    
}
