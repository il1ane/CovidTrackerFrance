//
//  MainView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 21/04/2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView(
                content:  {
                    
                    HomeView().tabItem { Label(
                        title: { Text("Stats") },
                        icon: { Image(systemName: "rectangle.3.offgrid") }
                    ) }
                    
                    VaccineView().tabItem { Label(
                        title: { Text("Vaccins") },
                        icon: { Image(systemName: "heart.text.square") }
                    )
                    }
                    
                    NewsView().tabItem { Label(
                        title: { Text("Articles") },
                        icon: { Image(systemName: "newspaper") }
                    ) }
                })
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
