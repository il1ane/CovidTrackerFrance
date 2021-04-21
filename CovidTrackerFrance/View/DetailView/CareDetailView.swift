//
//  CareDetailView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 21/04/2021.
//

import SwiftUI

struct CareDetailView: View {
    var body: some View {
        
        DetailViewStyle(text: "Nombre de patients atteints de COVID-19 actuellement en réanimation, en, soins intensifs, ou en unité de surveillance continue")
    }
}

struct CareDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CareDetailView()
    }
}
