//
//  Stats.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 17/04/2021.
//

import Foundation

struct Stats : Decodable {
    public var infected:Int
    public var recoverd:Int
    public var hospitalDeceased:Int
    public var hospitalized: Int
    public var newlyHospitalized:Int
    public var intensiveCare:Int
    public var sourceUrl:String
    public var lastUpdatedAtApify:String
    public var readMe:String
    public var lastUpdatedAtSource:String
}

let dataExample = Stats(infected: 0, recoverd: 0, hospitalDeceased: 0, hospitalized: 0, newlyHospitalized: 0, intensiveCare: 0, sourceUrl: "-", lastUpdatedAtApify: "-", readMe: "-", lastUpdatedAtSource: "-")
