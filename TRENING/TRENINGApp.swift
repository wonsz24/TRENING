//
//  TRENINGApp.swift
//  TRENING
//
//  Created by Marcin Zaporowski on 27/12/2024.
//

import SwiftUI

@main
struct TRENINGApp: App {
    // Utwórz kontroler persystencji Core Data
        let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)

        }
    }
}
