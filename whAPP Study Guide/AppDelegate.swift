//
//  AppDelegate.swift
//  whAPP Study Guide
//
//  Created by Nicholas Morris on 12/11/20.
//  Perfected by Nick Morris on Ryan Virkar on 3/23/2021
//  Finished by Nick Morris, Ryan Virkar, and Ryan Beaudoin on 4/5/2021
import UIKit
import Firebase
@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        GADMobileAds.configure(withApplicationID: "ca-app-pub-3032616980524090~1620106145")
        
        let db = Firestore.firestore()
        
        print(db)
        
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

