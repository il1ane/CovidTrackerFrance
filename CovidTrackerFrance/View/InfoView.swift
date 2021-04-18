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
            Text("🇫🇷").font(.system(size: 90))
            Text("""
Datas shown are official datas provided by French government on :\n https://dashboard.covid19.data.gouv.fr/vue-d-ensemble?location=FRA
""")
            
        }.foregroundColor(.white).font(.title2).padding()
        }.navigationBarTitle("Infos")
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
