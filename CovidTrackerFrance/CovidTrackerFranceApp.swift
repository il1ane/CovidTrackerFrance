//
//  CovidTrackerFranceApp.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 17/04/2021.
//

import SwiftUI
import CoreData

@main
struct CovidTrackerFranceApp: App {
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            HomeView().preferredColorScheme(.dark)
        }
    }
}
