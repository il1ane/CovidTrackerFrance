//
//  StatsGridView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 18/04/2021.
//

import SwiftUI

struct StatsGridView: View {
    var body: some View {
        LazyVGrid(columns: [GridItem(.fixed(20))], content: {
            Text("Placeholder")
            Text("Placeholder")
        })
    }
}

struct StatsGridView_Previews: PreviewProvider {
    static var previews: some View {
        StatsGridView()
    }
}
