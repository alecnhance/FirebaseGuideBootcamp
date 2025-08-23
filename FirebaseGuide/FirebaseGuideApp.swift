//
//  FirebaseGuideApp.swift
//  FirebaseGuide
//
//  Created by Alec Hance on 1/27/25.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true}
}

@main
struct FirebaseGuideApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject private var firebaseViewModel = FirebaseViewModel.vm
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
