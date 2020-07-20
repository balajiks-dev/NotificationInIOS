//
//  AppDelegate.swift
//  Notification
//
//  Created by Balaji Sundaram on 17/07/20.
//  Copyright © 2020 Balaji Sundaram. All rights reserved.
//

import UIKit
import UserNotifications
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, MessagingDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in
            if let error = error {
                
            }
        }
        
        application.registerForRemoteNotifications()
        
        FirebaseApp.configure()
        
        Messaging.messaging().delegate = self
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String) {
        print("FCM Token: \(fcmToken)")
    }
    
//    func application(
//      _ application: UIApplication,
//      didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data
//    ) {
//      let tokenParts = deviceToken.map { data in String(format: "%02.2hhx", data) }
//      let token = tokenParts.joined()
//      print("Device Token: \(token)")
//    }
//
//    func application(
//      _ application: UIApplication,
//      didFailToRegisterForRemoteNotificationsWithError error: Error) {
//      print("Failed to register: \(error)")
//    }

}

