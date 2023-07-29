//
//  BhagavadGitaApp.swift
//  BhagavadGita
//
//  Created by waheedCodes on 29/07/2023.
//

import SwiftUI

@main
struct BhagavadGitaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
