//
//  StatsViewModel.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 20/04/2021.
//

import Foundation

class StatsViewModel: ObservableObject {
    
    @Published var stats: Stats?
   
//    func saveData(context: NSManagedObjectContext) {
//
//
//        let entity = Covid(context: context)
//
//
//            entity.hospitalDeceased = stats!.hospitalDeceased
//            entity.hospitalized = stats!.hospitalized
//            entity.infected = stats!.infected
//            entity.intensiveCare = stats!.intensiveCare
//            entity.lastUpdatedAtApify = stats!.lastUpdatedAtApify
//            entity.lastUpdatedAtSource = stats!.lastUpdatedAtSource
//            entity.newlyHospitalized = stats!.newlyHospitalized
//            entity.readMe = stats!.readMe
//            entity.recoverd = stats!.recoverd
//
//
//        if (stats != nil) {
//        do {
//            try context.save()
//            print("Successfully saved to Core Data.")
//        }
//        catch {
//            print(error.localizedDescription)
//        }
//        }
//
//    }

    
    func fetchData() {
        guard let url = URL(string: "https://api.apify.com/v2/key-value-stores/ufVgKLP8ljtn3ufaU/records/LATEST?disableRedirect=true") else { return }
        URLSession.shared.dataTask(with: url) { data, error, response in
            guard let data = data else { return }
            
            if let decodedData = try? JSONDecoder().decode(Stats.self, from: data) {
                DispatchQueue.main.async {
                    
                    self.stats = decodedData
                    print("today stats loaded")
            
                }
            }
        }.resume()
    }
}

