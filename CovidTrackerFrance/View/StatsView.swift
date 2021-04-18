//
//  StatsView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 18/04/2021.
//

import SwiftUI

struct StatsView: View {
    @Binding var stats: Stats
    
    var body: some View {
        
        NavigationView {
            VStack {
                
            VStack(alignment: .leading) {
            
                HStack {
                    Text("Infected :")
                    Spacer()
                    Text("\(stats.infected)").foregroundColor(.pink)
                }
                
                HStack {
                    Text("Hospital deceased :")
                    Spacer()
                    Text("\(stats.hospitalDeceased)").foregroundColor(.pink)
                }
                HStack {
                    Text("Intensive Care :")
                    Spacer()
                    Text("\(stats.intensiveCare )").foregroundColor(.pink)
                }
                HStack {
                    Text("Newly hospitalized :")
                    Spacer()
                    Text("\(stats.newlyHospitalized )").foregroundColor(.pink)
                }
                HStack {
                    Text("Recovered :")
                    Spacer()
                    Text("\(stats.recoverd )").foregroundColor(.pink)
                }
                
            }.padding()
    Spacer()
           }
        }
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView(stats: .constant(dataExample))
    }
}
