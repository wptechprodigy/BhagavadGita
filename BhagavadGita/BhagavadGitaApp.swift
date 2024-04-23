//
//  BhagavadGitaApp.swift
//  BhagavadGita
//
//  Created by waheedCodes on 29/07/2023.
//

import SwiftUI

@main
struct BhagavadGitaApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    let persistenceController = PersistenceController.shared
    @AppStorage("isOnboardingLoaded") var isOnboardingLoaded = false
    var body: some Scene {
        WindowGroup {
            if isOnboardingLoaded {
                ContentView()
            } else {
                OnboardingView()
            }
        }
    }
}
