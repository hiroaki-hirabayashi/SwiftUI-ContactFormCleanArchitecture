//
//  SwiftUI_ContactForm_CleanArchitectureApp.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/17.
//

import SwiftUI

@main
struct SwiftUI_ContactForm_CleanArchitectureApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.scenePhase) private var scenePhase
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
        .onChange(of: scenePhase) { phase in
            switch phase {
                case .active:
                    testConfiguration()
                default:
                    break
            }
        }
    }
    
    class AppDelegate: UIResponder, UIApplicationDelegate {
        func application(
            _ application: UIApplication,
            didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? =
            nil
        ) -> Bool {
            return true
        }
    }
    
    func testConfiguration() {
        if ProcessInfo.processInfo.arguments.contains("UITests") {
            UIApplication.shared.keyWindow?.layer.speed = 200
        }
    }
}


extension UIApplication {
    var keyWindow: UIWindow? {
        return UIApplication.shared.connectedScenes
            .first { $0 is UIWindowScene && $0.activationState == .foregroundActive }
            .flatMap { $0 as? UIWindowScene }?.windows
            .first { $0.isKeyWindow }
    }
}

