//
//  AppDelegate.swift
//  BhagavadGita
//
//  Created by waheedCodes on 03/11/2023.
//

import Firebase
import Foundation
import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _: UIApplication,
        didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
