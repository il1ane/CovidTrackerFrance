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
    @State private var isShowing = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                AngularGradient(gradient: Gradient(colors: [Color.blue, Color.red]), center: .center ).edgesIgnoringSafeArea(.all)
                VStack {
                    VStack {
                        
                        StatsView(stats: $stats, animate: $showLastUpdate)
                        
                        Spacer()
                    }
                    
                    
                }
            }.navigationBarTitle("Covid Tracker 🦠").navigationBarItems(leading: Button(action: { isShowing.toggle()}, label: {
                Image(systemName: "info.circle").foregroundColor(.eerie)
            }), trailing:
                Button(action: { loadData(); showLastUpdate = true }, label: {
                Image(systemName: "arrow.clockwise").foregroundColor(.eerie)
  }))
        }.sheet(isPresented: $isShowing, content: {
            InfoView()
        })
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
