//
//  ContentView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 17/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var stats: Stats
    
    var body: some View {
        
        NavigationView {
            VStack {
                VStack {
                
                StatsView(stats: $stats)
                }
                
                Text("Last update :")
                Text("\(stats.lastUpdatedAtSource)").foregroundColor(.gray)
                Button(action: { loadData() }, label: {
                    Text("Refresh datas")
                }).padding(10).background(Color.blue).foregroundColor(.white).clipShape(RoundedRectangle(cornerRadius: 6))
                
            }.navigationBarTitle("Covid Tracker 🦠")
        }
    }
    
    private func loadData() {
        guard let url = URL(string: "https://api.apify.com/v2/key-value-stores/ufVgKLP8ljtn3ufaU/records/LATEST?disableRedirect=true") else { return }
        URLSession.shared.dataTask(with: url) { data, error, response in
            guard let data = data else { return }
            
            if let decodedData = try? JSONDecoder().decode(Stats.self, from: data) {
                DispatchQueue.main.async {
                    self.stats = decodedData
                }
            }
        }.resume()
    }
}

let dataExample = Stats(infected: 0, recoverd: 0, hospitalDeceased: 0, newlyHospitalized: 0, intensiveCare: 0, sourceUrl: "", lastUpdatedAtApify: "", readMe: "", lastUpdatedAtSource: "")

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
       
        
        ContentView(stats: dataExample)
    }
  
}
