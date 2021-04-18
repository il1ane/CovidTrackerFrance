//
//  CovidTrackerFranceApp.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 17/04/2021.
//

import SwiftUI

@main
struct CovidTrackerFranceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(stats: dataExample)
        }
    }
}
