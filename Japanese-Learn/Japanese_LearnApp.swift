//
//  Japanese_LearnApp.swift
//  Japanese-Learn
//
//  Created by Payton Mitchell on 1/9/26.
//

import SwiftUI

@main
struct Japanese_LearnApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
