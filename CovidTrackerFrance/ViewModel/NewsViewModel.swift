//
//  NewsViewModel.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 22/04/2021.
//

import Foundation

class NewsViewModel: ObservableObject {
    
    @Published var news : News?
    @Published var loading = true
    
    func fetchNews() {
        
        //Add API key after "apiKey=" parameter
        
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?q=covid&country=fr&apiKey=") else { return }
        URLSession.shared.dataTask(with: url) { data, error, response in
            guard let data = data else { return }
            
            
            if let decodedData = try? JSONDecoder().decode(News.self, from: data) {
                DispatchQueue.main.async {
                    
                    self.news = decodedData
                    self.loading = false
                    print(decodedData)
                }
            }
                
            
            
            
        }.resume()
    }
}
