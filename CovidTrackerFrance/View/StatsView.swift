//
//  StatsView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 18/04/2021.
//

import SwiftUI

struct StatsView: View {
    @Binding var stats: Stats?
    @Binding var animate: Bool
    
    
    var body: some View {
        
            //TODO: adapt for smaller screen
        
            VStack {
                
                NavigationLink(
                    destination: ConfirmedDetailView(),
                    label: {
                        HStack {
                            
                            Spacer()
                            VStack {
                                Text("Cas confirmés")
                                Spacer().frame(height : 10)
                                Text("\(stats?.infected ?? dataExample.infected)").foregroundColor(.purple).bold().animation(animate ? .easeIn : .none)
                            }.frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 100, maxHeight: 100, alignment: .center)
                            
                            Spacer()
                        }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                    })
                
                
                HStack {
                    
                    
                    HStack {
                        Spacer()
                        VStack(alignment: .center) {
                            
                            Text("Patients hospitalisés")
                           
                            Spacer().frame(height : 10)
                            HStack {
                                Text("\(stats?.hospitalized ?? dataExample.hospitalized)").foregroundColor(.blue).bold().animation(animate ? .easeIn : .none)
                                
                            }
                            
                        }.frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 100, maxHeight: 100, alignment: .center)
                        
                        Spacer()
                    }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                    
                    Spacer()
                    HStack {
                        
                        VStack {
                            Text("Patients en réanimation")
                            Spacer().frame(height : 10)
                            Text("\(stats?.intensiveCare ?? dataExample.intensiveCare)").foregroundColor(.orange).bold().animation(animate ? .easeIn : .none)
                            
                        }.frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 100, maxHeight: 100, alignment: .center)
                        
                        
                    }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                }
                
                
                HStack {
                    
                    
                    
                    HStack {
                        
                        VStack {
                            Text("Décès à l’hôpital")
                            Spacer().frame(height : 10)
                            Text("\(stats?.hospitalDeceased ?? dataExample.hospitalDeceased)").foregroundColor(.red).bold().animation(animate ? .easeIn : .none)
                            
                        }.frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 100, maxHeight: 100, alignment: .center)
                        
                        
                    }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                    Spacer()
                    HStack {
                        Spacer()
                        VStack {
                            Text("Retours à domicile")
                            Spacer().frame(height : 10)
                            Text("\(stats?.recoverd ?? dataExample.recoverd )").foregroundColor(.green).bold().animation(animate ? .easeIn : .none)
                        }.frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 100, maxHeight: 100, alignment: .center)
                        
                        Spacer()
                }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                }
               
                    
                VStack(alignment : .center) {
                        Spacer()
                        Text("Dernière mise à jour de l'API :\n \(stats?.lastUpdatedAtSource ?? dataExample.lastUpdatedAtSource)").foregroundColor(.eerie)
                    }.animation(animate ? .easeIn : .easeIn)
                    
                
                
                Spacer()
            }.padding()
            
        
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView(stats: .constant(dataExample), animate: .constant(true))
    }
}
