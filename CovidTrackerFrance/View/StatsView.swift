//
//  StatsView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 18/04/2021.
//

import SwiftUI

struct StatsView: View {
    
    @Binding var animate: Bool
    @ObservedObject var stats = StatsViewModel()
    
    var body: some View {
        
//        .foregroundColor(.blue).bold().animation(animate ? .easeIn : .none)
            VStack {
                
                NavigationLink(
                    destination:         VStack {
                        DetailViewStyle(title: "Cas confirmés", text: "Le nombre de cas confirmés inclut le nombre de cas confirmés par tests RT-PCR issus de la base de données SI-DEP et le nombre de cas confirmés par test antigénique issus de Contact Covid", color: .blue, data: stats.stats?.infected ?? DataSet.datas.infected).padding()
                        
                      
                    }
,
                    label: {
                        StatsViewComponents(data: stats.stats?.infected ?? DataSet.datas.infected, dataTitle: "Cas confirmés", color: .blue)
                        })
                HStack {
                NavigationLink(
                    destination:  DetailViewStyle(title: "Hospitalisés", text: "Nombre de patients atteints de COVID-19 actuellement hospitalisés", color: .yellow, data: stats.stats?.hospitalized ?? DataSet.datas.hospitalized).padding(),
                    label: {
                        StatsViewComponents(data: stats.stats?.hospitalized ?? DataSet.datas.hospitalized, dataTitle: "Hospitalisés", color: .yellow)
                        })
                NavigationLink(
                    destination:  DetailViewStyle(title: "Soins intensifs", text: "Nombre de patients atteints de COVID-19 actuellement en réanimation, en, soins intensifs, ou en unité de surveillance continue", color: .orange, data: stats.stats?.intensiveCare ?? DataSet.datas.intensiveCare).padding(),
                    label: {
                        StatsViewComponents(data: stats.stats?.intensiveCare ?? DataSet.datas.intensiveCare, dataTitle: "Soins intensifs", color: .orange)
                        })
                }
                HStack {
                NavigationLink(
                    destination:    DetailViewStyle(title: "Décès", text: "Nombre de décès à l'hôpital",color: .red, data: stats.stats?.hospitalDeceased ?? DataSet.datas.hospitalDeceased).padding() ,
                    label: {
                        StatsViewComponents(data: stats.stats?.hospitalDeceased ?? DataSet.datas.hospitalDeceased, dataTitle: "Décès", color: .red)
                        })
                NavigationLink(
                    destination: DetailViewStyle(title: "Retours", text: "Nombre cumulé de patients ayany été hospitalisés pour COVID-19 et de retour à domicile en raison de l'amélioration de leur état de santé", color: .green, data: stats.stats?.recoverd ?? DataSet.datas.recoverd).padding() ,
                    label: {
                        StatsViewComponents(data: stats.stats?.recoverd ?? DataSet.datas.recoverd, dataTitle: "Retours à domicile", color: .green)
                        })
                }
                Spacer()

                VStack(alignment : .center) {
                        Spacer()
                    Text("Dernière mise à jour de l'API :\n \(stats.stats?.lastUpdatedAtSource ?? DataSet.datas.lastUpdatedAtSource )")
                    }
                    
            }.padding().onAppear(perform: {
               stats.fetchData()
            })
            
        
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView(animate: .constant(true))
    }
}
