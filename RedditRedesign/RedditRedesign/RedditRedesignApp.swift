//
//  RedditRedesignApp.swift
//  RedditRedesign
//
//  Created by Dario Galiani on 10/12/21.
//

import SwiftUI

@main
struct RedditRedesignApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Home()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
