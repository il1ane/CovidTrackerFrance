//
//  StatsViewModel.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 20/04/2021.
//

import Foundation

class StatsViewModel: ObservableObject {
    
    @Published var stats: Stats?
    @Published var loading = true
    
    func fetchStats() {
        guard let url = URL(string: "https://api.apify.com/v2/key-value-stores/ufVgKLP8ljtn3ufaU/records/LATEST?disableRedirect=true") else { return }
        URLSession.shared.dataTask(with: url) { data, error, response in
            guard let data = data else { return }
            
            if let decodedData = try? JSONDecoder().decode(Stats.self, from: data) {
                DispatchQueue.main.async {
                    
                    self.stats = decodedData
                    self.loading = false
                    print("today stats loaded")
            
                }
            }
        }.resume()
    }
}

