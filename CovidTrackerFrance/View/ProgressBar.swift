//
//  ProgressBar.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 25/04/2021.
//

import SwiftUI

struct ProgressBar: View {
    
     var firstDose: Int
     var vaccinated: Int
    @State private var firstDosePercentage:Double = 0
    @State private var vaccinatedPercentage:Double = 0
    
    var body: some View {
        
  
            
        
            
            GeometryReader { geometry in
                   
                            
                    ZStack(alignment: .leading) {
                            
                         
                                
                            Rectangle().frame(width: CGFloat(100 * 4), height: geometry.size.height)
                            .foregroundColor(Color(.systemBlue).opacity(0.8))
                                .animation(.easeIn(duration: 0.5))
                            HStack(spacing: 0) {
                        
                                
                              
                                Rectangle().frame(width:  CGFloat(Double(Double(firstDose) / 67000000 * 100) * 4), height: geometry.size.height)
                            .foregroundColor(Color(.systemPurple).opacity(0.8))
                                    .animation(.easeIn(duration: 0.2))
                                
                                    
                                Rectangle().frame(width:  CGFloat(Double(Double(vaccinated) / 67000000 * 100) * 4), height: geometry.size.height)
                                    .foregroundColor(Color(.systemGreen).opacity(0.8)).animation(.easeIn(duration: 0.2))
                                
                       Spacer()
                        }
                    
                }.cornerRadius(30)
        }
    }
}


struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(firstDose: 13000000, vaccinated: 5000000)
    }
}
