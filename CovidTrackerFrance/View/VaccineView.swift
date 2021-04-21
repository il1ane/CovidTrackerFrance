//
//  VaccineView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 21/04/2021.
//

import SwiftUI

struct VaccineView: View {
    @ObservedObject var vaccine = VaccineViewModel()
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                Divider()
        VStack {
            HStack {
                
//                StatsViewComponents(data: vaccine.vaccines?.all.peopleVaccinated ?? 0, dataTitle: "Vaccinated", color: .gre
                StatsViewComponents(data: vaccine.vaccines?.all.population ?? 0, dataTitle: "Population", color: .gray)
                
            
            }
           
            HStack {
                StatsViewComponents(data: vaccine.vaccines?.all.peoplePartiallyVaccinated ?? 0, dataTitle: "Partiellement Vaccinés", color: .blue)
               
                StatsViewComponents(data: vaccine.vaccines?.all.peopleVaccinated ?? 2, dataTitle: "Vaccinés", color: .green)
            }
          
        }.padding()
        }.navigationTitle("Vaccination")
        }.onAppear(perform: {
                  //vaccine.fetchVaccine()
                    })
    }
}

struct VaccineView_Previews: PreviewProvider {
    static var previews: some View {
        VaccineView()
    }
}
