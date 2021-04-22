//
//  VaccineView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 21/04/2021.
//

import SwiftUI

struct VaccineView: View {
    @ObservedObject var vaccine = VaccineViewModel()
    @State private var apiCall = true
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                Divider()
        VStack {
            
//            if vaccine.loading {
//                VStack {
//                ProgressView()
//                }
//            }
            
            HStack {
                
//                StatsViewComponents(data: vaccine.vaccines?.all.peopleVaccinated ?? 0, dataTitle: "Vaccinated", color: .gre
                StatsViewComponents(data: vaccine.vaccines?.all.population ?? 0, dataTitle: "Population", color: .gray)
                
            
            }
           
            HStack {
                StatsViewComponents(data: vaccine.vaccines?.all.peoplePartiallyVaccinated ?? 0, dataTitle: "1ère dose", color: .blue)
               
                StatsViewComponents(data: vaccine.vaccines?.all.peopleVaccinated ?? 0, dataTitle: "Vaccinés", color: .green)
            }
          
        }.padding()
        }.navigationTitle("Vaccination")
        }.onAppear(perform: {
            if apiCall == true {
                vaccine.fetchVaccine()
                apiCall = false
            }
        })
    }
}

struct VaccineView_Previews: PreviewProvider {
    static var previews: some View {
        VaccineView()
    }
}
