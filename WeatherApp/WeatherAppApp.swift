//
//  WeatherAppApp.swift
//  WeatherApp
//
//  Created by Maria José Sánchez Cairazco on 11/10/24.
//

import SwiftUI

@main
struct WeatherAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
