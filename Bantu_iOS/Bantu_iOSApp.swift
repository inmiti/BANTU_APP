//
//  Bantu_iOSApp.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 26/3/24.
//

import SwiftUI

@main
struct Bantu_iOSApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Splash()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
