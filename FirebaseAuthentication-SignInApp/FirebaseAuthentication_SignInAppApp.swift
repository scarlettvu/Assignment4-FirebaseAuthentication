//
//  FirebaseAuthentication_SignInAppApp.swift
//  FirebaseAuthentication-SignInApp
//
//  Created by Scarlett  on 3/27/23.
//

import SwiftUI
import Firebase

@main
struct FirebaseAuthentication_SignInAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate  
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any]) async -> UIBackgroundFetchResult {
        return .noData
    }
}
