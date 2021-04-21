//
//  HospitalizedDetailView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 21/04/2021.
//

import SwiftUI

struct HospitalizedDetailView: View {
    var body: some View {
        
        DetailViewStyle(text: "Nombre de patients atteints de COVID-19 actuellement hospitalisés")
    }
}

struct HospitalizedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HospitalizedDetailView()
    }
}
