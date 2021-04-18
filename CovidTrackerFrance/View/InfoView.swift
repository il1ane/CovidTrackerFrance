//
//  InfoView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 18/04/2021.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView {
        ZStack {
            Color.blue.ignoresSafeArea()
        VStack(alignment: .center) {
            Image(systemName: "questionmark.circle").font(.system(size: 100))
            Spacer().frame(height: 30)
            Text("Where does the data come from?").bold().font(.title2)
            Spacer().frame(height: 10)
            Text("""
Data shown are official data provided by French government on :\n https://dashboard.covid19.data.gouv.fr/vue-d-ensemble?location=FRA
""").font(.body)
            
        }.foregroundColor(.white).padding()
        }.navigationBarTitle("Infos")
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
