//
//  VaccineViewModel.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 21/04/2021.
//

import Foundation

class VaccineViewModel: ObservableObject {
    @Published var vaccines: Vaccine?
    
    func fetchVaccine() {
        guard let url = URL(string: "https://covid-api.mmediagroup.fr/v1/vaccines?country=France") else { return }
        URLSession.shared.dataTask(with: url) { data, error, response in
            guard let data = data else { return }
            
            if let decodedData = try? JSONDecoder().decode(Vaccine.self, from: data) {
                DispatchQueue.main.async {
                    
                    self.vaccines = decodedData
                    print("today stats loaded")
            
                }
            }
        }.resume()
    }
}
