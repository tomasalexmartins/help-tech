//
//  HelpTechApp.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 15/04/2024.
//

import SwiftUI

@main
struct HelpTechApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
