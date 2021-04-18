//
//  StatsView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 18/04/2021.
//

import SwiftUI

struct StatsView: View {
    @Binding var stats: Stats
    
    var body: some View {
        
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    VStack {
                        Text("Infected")
                        Spacer().frame(height : 10)
                        Text("\(stats.infected)").foregroundColor(.pink).bold()
                        
                    }.frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 100, maxHeight: 100, alignment: .center)
                    
                    Spacer()
                }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                
                HStack {
                    
                    
                    HStack {
                        Spacer()
                        VStack(alignment: .center) {
                            Text("Newly \nhospitalized")
                            Spacer().frame(height : 10)
                            Text("\(stats.newlyHospitalized)").foregroundColor(.pink).bold()
                            
                        }.padding()
                        
                        Spacer()
                    }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                    
                    Spacer()
                    HStack {
                        
                        VStack {
                            Text("Intensive \nCare")
                            Spacer().frame(height : 10)
                            Text("\(stats.newlyHospitalized)").foregroundColor(.pink).bold()
                            
                        }.padding()
                        
                        
                    }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                }
                
                
                HStack {
                    
                    
                    
                    HStack {
                        
                        VStack {
                            Text("Hospital \nDeceased")
                            Spacer().frame(height : 10)
                            Text("\(stats.hospitalDeceased)").foregroundColor(.pink).bold()
                            
                        }.padding()
                        
                        
                    }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                    Spacer()
                    HStack {
                        Spacer()
                        VStack {
                            Text("Recovered")
                            Spacer().frame(height : 10)
                            Text("\(stats.recoverd )").foregroundColor(.green).bold()
                        }.padding()
                        
                        Spacer()
                }.padding(26).background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                }
                Spacer()
            }.padding().font(.headline)
            
        
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView(stats: .constant(dataExample))
    }
}
