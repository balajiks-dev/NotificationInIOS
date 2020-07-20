////
////  SceneDelegate.swift
////  Notification
////
////  Created by Balaji Sundaram on 17/07/20.
////  Copyright © 2020 Balaji Sundaram. All rights reserved.
////
//
//import UIKit
//
//class SceneDelegate: UIResponder, UIWindowSceneDelegate {
//
//    var window: UIWindow?
//
//
//    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
//        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
//        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
//        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
//        guard let _ = (scene as? UIWindowScene) else { return }
//    }
//
//    func sceneDidDisconnect(_ scene: UIScene) {
//        // Called as the scene is being released by the system.
//        // This occurs shortly after the scene enters the background, or when its session is discarded.
//        // Release any resources associated with this scene that can be re-created the next time the scene connects.
//        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
//    }
//
//    func sceneDidBecomeActive(_ scene: UIScene) {
//        // Called when the scene has moved from an inactive state to an active state.
//        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
//                //Step 1
//                let content = UNMutableNotificationContent()
//                content.title = NSString.localizedUserNotificationString(forKey: "Hello", arguments: nil)
//                content.body = NSString.localizedUserNotificationString(forKey: "You entered background", arguments: nil)
//                content.sound = UNNotificationSound.default
//                content.badge = 1
//                
//                //Step 2
//                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
//                
//                
//        //        This is used to trigger the Notification at some specific time.
//        //        var date = DateComponents()
//        //        date.hour = 10
//        //        date.minute = 0
//        //        let trigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: false)
//                
//                //Step 3
//                let request = UNNotificationRequest(identifier: "First", content: content, trigger: trigger)
//                
//                //Step 4
//                let center = UNUserNotificationCenter.current()
//                center.add(request) {(error: Error?) in
//                    if let theError = error {
//                        // Handle any errors
//                    }
//                }
//    }
//
//    func sceneWillResignActive(_ scene: UIScene) {
//        // Called when the scene will move from an active state to an inactive state.
//        // This may occur due to temporary interruptions (ex. an incoming phone call).
//    }
//
//    func sceneWillEnterForeground(_ scene: UIScene) {
//        // Called as the scene transitions from the background to the foreground.
//        // Use this method to undo the changes made on entering the background.
//                //Step 1
//                let content = UNMutableNotificationContent()
//                content.title = NSString.localizedUserNotificationString(forKey: "Hello", arguments: nil)
//                content.body = NSString.localizedUserNotificationString(forKey: "You entered background", arguments: nil)
//                content.sound = UNNotificationSound.default
//                content.badge = 1
//                
//                //Step 2
//                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
//                
//                
//        //        This is used to trigger the Notification at some specific time.
//        //        var date = DateComponents()
//        //        date.hour = 10
//        //        date.minute = 0
//        //        let trigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: false)
//                
//                //Step 3
//                let request = UNNotificationRequest(identifier: "First", content: content, trigger: trigger)
//                
//                //Step 4
//                let center = UNUserNotificationCenter.current()
//                center.add(request) {(error: Error?) in
//                    if let theError = error {
//                        // Handle any errors
//                    }
//                }
//    }
//
//    func sceneDidEnterBackground(_ scene: UIScene) {
//        // Called as the scene transitions from the foreground to the background.
//        // Use this method to save data, release shared resources, and store enough scene-specific state information
//        // to restore the scene back to its current state.
//        
//        
//        //Step 1
//        let content = UNMutableNotificationContent()
//        content.title = NSString.localizedUserNotificationString(forKey: "Hello", arguments: nil)
//        content.body = NSString.localizedUserNotificationString(forKey: "You entered background", arguments: nil)
//        content.sound = UNNotificationSound.default
//        content.badge = 1
//        
//        //Step 2
//        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
//        
//        
////        This is used to trigger the Notification at some specific time.
////        var date = DateComponents()
////        date.hour = 10
////        date.minute = 0
////        let trigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: false)
//        
//        //Step 3
//        let request = UNNotificationRequest(identifier: "First", content: content, trigger: trigger)
//        
//        //Step 4
//        let center = UNUserNotificationCenter.current()
//        center.add(request) {(error: Error?) in
//            if let theError = error {
//                // Handle any errors
//            }
//        }
//    }
//
//
//}
//
