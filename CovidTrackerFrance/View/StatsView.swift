//
//  StatsView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 18/04/2021.
//

import SwiftUI

struct StatsView: View {
    
    @Binding var animate: Bool
    @StateObject var stats = StatsViewModel()
    
    var body: some View {
        
        
            VStack {
                
                NavigationLink(
                    destination: InfectedDetailView(),
                    label: {
                        HStack {
                            
                            Spacer()
                            VStack {
                                Text("Cas confirmés")
                                Spacer().frame(height : 10)
                                Text("\(stats.stats?.infected ?? DataSet.datas.infected )").foregroundColor(.purple).bold().animation(animate ? .easeIn : .none)
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
                                Text("\(stats.stats?.hospitalized ?? DataSet.datas.hospitalized )").foregroundColor(.blue).bold().animation(animate ? .easeIn : .none)
                                
                            }
                            
                        }.frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 100, maxHeight: 100, alignment: .center)
                        
                        Spacer()
                    }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                    
                    Spacer()
                    HStack {
                        
                        VStack {
                            Text("Patients en réanimation")
                            Spacer().frame(height : 10)
                            Text("\(stats.stats?.intensiveCare ?? DataSet.datas.intensiveCare)").foregroundColor(.orange).bold().animation(animate ? .easeIn : .none)
                            
                        }.frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 100, maxHeight: 100, alignment: .center)
                        
                        
                    }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                }
                
                
                HStack {
                    
                    
                    
                    HStack {
                        
                        VStack {
                            Text("Décès")
                            Spacer().frame(height : 10)
                            Text("\(stats.stats?.hospitalDeceased ?? DataSet.datas.hospitalDeceased )").foregroundColor(.red).bold().animation(animate ? .easeIn : .none)
                            
                        }.frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 100, maxHeight: 100, alignment: .center)
                        
                        
                    }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                    Spacer()
                    HStack {
                        Spacer()
                        VStack {
                            Text("Retours à domicile")
                            Spacer().frame(height : 10)
                            Text("\(stats.stats?.recoverd ?? DataSet.datas.recoverd)").foregroundColor(.green).bold().animation(animate ? .easeIn : .none)
                        }.frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 100, maxHeight: 100, alignment: .center)
                        
                        Spacer()
                }.padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                }
               
                    
                VStack(alignment : .center) {
                        Spacer()
                    Text("Dernière mise à jour de l'API :\n \(stats.stats?.lastUpdatedAtSource ?? DataSet.datas.lastUpdatedAtSource )")
                    }
                    
                
                Spacer()
            }.padding().onAppear(perform: {
               stats.fetchData()
            })
            
        
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView(animate: .constant(true))
    }
}
