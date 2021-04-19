//
//  ContentView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 17/04/2021.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showLastUpdate = false
    @State var stats: StatsModel?
    @State private var isShowing = false
//    @Environment(\.managedObjectContext) var context
    @Environment(\.colorScheme) var colorScheme
//    @StateObject var statsModel = StatsViewModel()
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                VStack {
                    VStack {
                        
                        StatsView(stats: $stats, animate: $showLastUpdate)
                        
                        Spacer()
                    }
                    
                    
                }
            }.navigationBarTitle("Stats du jour ").navigationBarItems(leading: Button(action: { isShowing.toggle()}, label: {
                Image(systemName: "info.circle")
            }), trailing:
                Button(action: { fetchData() ;showLastUpdate = true }, label: {
                Image(systemName: "arrow.clockwise")
                }))
            
        }.accentColor(.red).sheet(isPresented: $isShowing, content: {
            InfoView(isPresented: $isShowing).environment(\.colorScheme, colorScheme).accentColor(.red)
        })
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        HomeView(stats: DatasShown.datas)
    }
    
}

extension HomeView {
    
    func fetchData() {
        guard let url = URL(string: "https://api.apify.com/v2/key-value-stores/ufVgKLP8ljtn3ufaU/records/LATEST?disableRedirect=true") else { return }
        URLSession.shared.dataTask(with: url) { data, error, response in
            guard let data = data else { return }
            
            if let decodedData = try? JSONDecoder().decode(StatsModel.self, from: data) {
                DispatchQueue.main.async {
                    self.stats = decodedData
                    
                }
            }
        }.resume()
    }

}
extension Color {
    public static var eerie = Color("Eerie")
}
