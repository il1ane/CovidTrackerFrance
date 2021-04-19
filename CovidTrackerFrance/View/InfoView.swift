//
//  InfoView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 18/04/2021.
//

import SwiftUI

struct InfoView: View {
    @Binding var isPresented:Bool
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            
           
                
                VStack(alignment: .center) {
                Image(systemName: "questionmark.circle").font(.system(size: 50))
                Spacer().frame(height: 30)
                Text("D'où proviennent les données?").bold().font(.title3)
                Spacer().frame(height: 10)
                
                VStack(alignment: .leading) {
            Text("Les données présentées sont des données officielles fournies par le gouvernement français.").font(.body)
                    Spacer().frame(height : 5)
               
                }
                
            }.padding().navigationBarTitle("Infos").navigationBarItems(trailing: Button(action: { isPresented.toggle() }, label: {
                Image(systemName: "xmark")
        }))
            }
        
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(isPresented: .constant(true))
    }
}
