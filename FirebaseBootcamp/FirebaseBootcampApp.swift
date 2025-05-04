//
//  FirebaseBootcampApp.swift
//  FirebaseBootcamp
//
//  Created by Роман Пшеничников on 02.05.2025.
//

import SwiftUI
import Firebase
import FirebaseAnalytics

@main
struct FirebaseBootcampApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}

// MARK: - Firebase Configuration
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        print("Firebase configured")
            
            Analytics.logEvent("test_event", parameters: [
                "user_name": "Roma",
                "debug_mode": true
            ])
            
    return true
  }
}
