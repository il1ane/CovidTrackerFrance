//
//  ConfirmedDetailView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 19/04/2021.
//

import SwiftUI

struct ConfirmedDetailView: View {
    var body: some View {
        ZStack {
            
        VStack {
        HStack {
            VStack {
        Text("Le nombre de cas confirmés inclut le nombre de cas confirmés par tests RT-PCR issus de la base de données SI-DEP et le nombre de cas confirmés par test antigénique issus de Contact Covid.")
            }.frame(minWidth: 0, idealWidth: 100, maxWidth: 400, minHeight: 0, idealHeight: 100, maxHeight: 140, alignment: .center)
       
        }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white).padding()
            Spacer()
        }
        
        .navigationBarTitle("Cas confirmés")
        }
    }
}

struct ConfirmedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmedDetailView()
    }
}
