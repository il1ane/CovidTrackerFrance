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
        
        NavigationView {
          
                
            
                
                VStack {
                
                    HStack {
                        
                        Spacer()
                        VStack {
                            Text("Infected")
                            Spacer().frame(height : 10)
                            Text("\(stats.infected)").foregroundColor(.pink)
                            
                        }
                        Spacer()
                    }.padding(35).background(Color.black).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                    
            HStack {
                        
                    Spacer()
                HStack {
                    
                    VStack {
                            Text("Newly \nhospitalized")
                                Spacer().frame(height : 10)
                            Text("\(stats.newlyHospitalized)").foregroundColor(.pink)
                                
                    }.padding(25).background(Color.black).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                    
                    
                }
                    HStack {
                        Spacer()
                        VStack {
                        Text("Intensive \nCare")
                            Spacer().frame(height : 10)
                        Text("\(stats.intensiveCare )").foregroundColor(.pink)
                        }
                        Spacer()

                        
                    }.padding(25).background(Color.black).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                Spacer()
                    }
                    
                    
                    HStack {
                                
                            Spacer()
                        HStack {
                            
                            VStack {
                                    Text("Hospital \nDeceased")
                                        Spacer().frame(height : 10)
                                Text("\(stats.hospitalDeceased)").foregroundColor(.pink)
                                        
                            }.padding(30).background(Color.black).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                            
                            
                        }
                            HStack {
                                Spacer()
                                VStack {
                                Text("Recovered")
                                    Spacer().frame(height : 10)
                                    Text("\(stats.recoverd )").foregroundColor(.green)
                                }
                                Spacer()

                                
                            }.padding(30).background(Color.black).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
                        Spacer()
                            }
                    Spacer()
                }.padding().font(.title2)
                        
        }
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView(stats: .constant(dataExample))
    }
}
