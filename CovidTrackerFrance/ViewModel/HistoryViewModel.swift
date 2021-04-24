//
//  HistoryViewModel.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 22/04/2021.
//

//import Foundation

//class HistoryViewModel: ObservableObject {
//
//    @Published var history: History?
//    @Published var loading = true
//
//    func fetchHistory() {
//        guard let url = URL(string: "https://covid-api.mmediagroup.fr/v1/history?country=France&status=confirmed") else { return }
//        URLSession.shared.dataTask(with: url) { data, error, response in
//            guard let data = data else { return }
//
//            if let decodedData = try? JSONDecoder().decode(History.self, from: data) {
//                DispatchQueue.main.async {
//
//                    self.history = decodedData
//                    self.loading = false
//
//
//                }
//            }
//        }.resume()
//    }
//
//}
