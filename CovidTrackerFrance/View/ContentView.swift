//
//  ContentView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 17/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showLastUpdate = false
    @State var stats: Stats
    
    var body: some View {
        
        NavigationView {
            VStack {
                VStack {
                
                StatsView(stats: $stats)
                    
                    if showLastUpdate {
                        
                        VStack {
                            Text("Last API update :").animation(.easeIn)
                    Text("\(stats.lastUpdatedAtSource)").foregroundColor(.gray)
                        }.animation(.linear)
                        
                    }
                    Spacer()
                }
                
               
                Button(action: { loadData(); showLastUpdate = true }, label: {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
       
        
        ContentView(stats: dataExample)
    }
  
}

extension Color {
    public static var eerie = Color("Eerie")
}
