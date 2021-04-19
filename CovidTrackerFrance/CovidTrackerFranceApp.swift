//
//  CovidTrackerFranceApp.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 17/04/2021.
//

import SwiftUI

@main
struct CovidTrackerFranceApp: App {
    @Environment(\.scenePhase) var scenePhase
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView(stats: DatasShown.datas).environment(\.managedObjectContext, persistenceController.container.viewContext)
        }.onChange(of: scenePhase) { _ in
            persistenceController.save()
        }
    }
}
