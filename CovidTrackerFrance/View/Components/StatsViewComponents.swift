//
//  StatsViewComponents.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 21/04/2021.
//

import SwiftUI

struct StatsViewComponents: View {
    
    var data:Int32
    var dataTitle:String
    var color:Color
    
    var body: some View {
        
        
        VStack {
        HStack {
            Spacer()
            VStack(alignment: .center) {
                Text(dataTitle)
                Spacer().frame(height : 10)
        Text("\(data)").foregroundColor(color).bold()
            }
            Spacer()
        }
        .rectangleStyle()
            
        }
        
       
        
    }
}

struct StatsViewComponents_Previews: PreviewProvider {
    static var previews: some View {
        StatsViewComponents(data: 11111, dataTitle: "Cas confirmés", color: Color.purple)
    }
}
