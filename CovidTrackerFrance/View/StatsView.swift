//
//  StatsView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 18/04/2021.
//

import SwiftUI

struct StatsView: View {
    @Binding var stats: Stats
    @Binding var animate: Bool
    
    var body: some View {
        
            //TODO: adapt app for smaller screen
        
            VStack {
                
                HStack {
                    
                    Spacer()
                    VStack {
                        Text("Infected")
                        Spacer().frame(height : 10)
                        Text("\(stats.infected)").foregroundColor(.purple).bold().animation(animate ? .easeIn : .none)
                    }.frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 100, maxHeight: 100, alignment: .center)
                    
                    Spacer()
                }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                
                HStack {
                    
                    
                    HStack {
                        Spacer()
                        VStack(alignment: .center) {
                            
                            Text("Hospitalized")
                           
                            Spacer().frame(height : 10)
                            HStack {
                            Text("\(stats.hospitalized)").foregroundColor(.blue).bold().animation(animate ? .easeIn : .none)
                                
                                if animate {
                                    Text("(+ \(stats.newlyHospitalized))").foregroundColor(.blue).animation(.easeOut)
                                }
                            }
                            
                        }.padding()
                        
                        Spacer()
                    }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                    
                    Spacer()
                    HStack {
                        
                        VStack {
                            Text("Intensive Care")
                            Spacer().frame(height : 10)
                            Text("\(stats.intensiveCare)").foregroundColor(.orange).bold().animation(animate ? .easeIn : .none)
                            
                        }.padding()
                        
                        
                    }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                }
                
                
                HStack {
                    
                    
                    
                    HStack {
                        
                        VStack {
                            Text("Hospital Deceased")
                            Spacer().frame(height : 10)
                            Text("\(stats.hospitalDeceased)").foregroundColor(.red).bold().animation(animate ? .easeIn : .none)
                            
                        }.padding()
                        
                        
                    }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                    Spacer()
                    HStack {
                        Spacer()
                        VStack {
                            Text("Recovered")
                            Spacer().frame(height : 10)
                            Text("\(stats.recoverd )").foregroundColor(.green).bold().animation(animate ? .easeIn : .none)
                        }.padding()
                        
                        Spacer()
                }.padding(26).background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                }
                if animate {
                    
                    VStack {
                Text("Last API update : \(stats.lastUpdatedAtSource)").foregroundColor(.eerie)
                    }.animation(animate ? .easeIn : .none)
                    
                } else {
                    Text("Datas needs to be refreshed!")
                }
                Spacer()
            }.padding().font(.headline)
            
        
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView(stats: .constant(dataExample), animate: .constant(true))
    }
}
