//
//  Critical_RemindersApp.swift
//  Critical Reminders
//
//  Created by Cory Nezin on 7/13/22.
//

import SwiftUI

@main
struct Critical_RemindersApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
