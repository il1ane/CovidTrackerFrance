//
//  ConfirmedDetailView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 19/04/2021.
//

import SwiftUI

struct InfectedDetailView: View {
    var body: some View {
        
       DetailViewStyle(text: "Le nombre de cas confirmés inclut le nombre de cas confirmés par tests RT-PCR issus de la base de données SI-DEP et le nombre de cas confirmés par test antigénique issus de Contact Covid")
    }
}

struct InfectedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        InfectedDetailView()
    }
}
