//
//  HistoryView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 23/04/2021.
//
//
//import SwiftUI
//
//struct HistoryView: View {
//    
//    @ObservedObject var stats = StatsViewModel()
//    @ObservedObject var history = HistoryViewModel()
//    @State private var apiCall = true
//    @State private var weekHistory:[String:Int] = [:]
//    
//    var body: some View {
//        
//        ScrollView {
//            VStack {
//                
//                DetailViewStyle(title: "Cas confirmés", text: "Le nombre de cas confirmés inclut le nombre de cas confirmés par tests RT-PCR issus de la base de données SI-DEP et le nombre de cas confirmés par test antigénique issus de Contact Covid", color: .blue, data: stats.stats?.infected ?? DataSet.datas.infected).padding()
//                
                
                
                //Charts
                
                //TODO: filter to only show last week results
                
                
//                ForEach(history.history?.all.dates.map { $0.key } ?? DataSet.historyData.all.dates.map { $0.key }, id: \.self) { key in
//
//
//                    Text(key)
//
//                    }
                    
                    
//                }.onAppear(perform: {
//                    if apiCall == true {
//                        history.fetchHistory()
//                        apiCall = false
//                }
                    
//            }
//            //)
//        }
//    }
//}



//struct HistoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        HistoryView()
//    }
//}
