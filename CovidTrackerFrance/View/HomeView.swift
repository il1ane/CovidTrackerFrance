//
//  ContentView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 17/04/2021.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showLastUpdate = false
    @State private var isShowing = false
    @StateObject var stats = StatsViewModel()
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        
        
        NavigationView {
            
                            
            ScrollView {
                VStack {
                    
                    
                    VStack {
                        
                        
                        
                        StatsView(animate: $showLastUpdate)
                        
                        Spacer()
                    }
                }
                    
                
            }.navigationBarTitle("Stats du jour ").navigationBarItems(leading: Button(action: { isShowing.toggle()}, label: {
                Image(systemName: "info.circle")
            }), trailing:
                Button(action: { stats.fetchData() ;
                        showLastUpdate = true }, label: {
                Image(systemName: "arrow.clockwise")
                }))
            
        }.onAppear(perform: {
           
            
            
        }).accentColor(.blue).sheet(isPresented: $isShowing, content: {
            InfoView(isPresented: $isShowing).environment(\.colorScheme, colorScheme).accentColor(.blue)
        })
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {

        HomeView()        
    }
}


extension Color {
    public static var eerie = Color("Eerie")
}
