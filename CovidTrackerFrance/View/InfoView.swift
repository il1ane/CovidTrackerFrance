//
//  InfoView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 18/04/2021.
//

import SwiftUI

struct InfoView: View {
    @Binding var isPresented:Bool
    var body: some View {
        NavigationView {
        ZStack {
            Color.blue.ignoresSafeArea()
        VStack(alignment: .center) {
            Image(systemName: "questionmark.circle").font(.system(size: 100))
            Spacer().frame(height: 30)
            Text("Where does the data come from?").bold().font(.title2)
            Spacer().frame(height: 10)
            
        Text("Data shown are official data provided by French").font(.body)
            HStack {
            Text("government,")
                Link("accesible here.", destination: URL(string: "https://dashboard.covid19.data.gouv.fr/vue-d-ensemble?location=FRA")!).font(.body).foregroundColor(.orange)
            }
            
        }.foregroundColor(.white).padding()
        }.navigationBarTitle("Infos").navigationBarItems(trailing: Button(action: { isPresented.toggle() }, label: {
            Image(systemName: "xmark").foregroundColor(.white)
        }))
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(isPresented: .constant(true))
    }
}
