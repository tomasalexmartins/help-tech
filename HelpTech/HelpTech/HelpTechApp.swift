//
//  HelpTechApp.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 15/04/2024.
//

import SwiftUI

@main
struct HelpTechApp: App {
    @State private var path = NavigationPath()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $path) {
                LoginPageView<LoginPageViewModel>(viewModel: .init())
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
        }
    }
}
