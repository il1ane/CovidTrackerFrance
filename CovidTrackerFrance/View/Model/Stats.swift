//
//  Stats.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 17/04/2021.
//

import Foundation
import CoreData

struct Stats : Codable, Hashable {
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

struct DataSet {
    static var datas = Stats(infected: 0, recoverd: 0, hospitalDeceased: 0, hospitalized: 0, newlyHospitalized: 0, intensiveCare: 0, sourceUrl: "-", lastUpdatedAtApify: "-", readMe: "-", lastUpdatedAtSource: "-")
    static var historyData = History(all: AllHistory(country: "", population: 1, sqKMArea: 1, lifeExpectancy: "", elevationInMeters: 1, continent: "", abbreviation: "", location: "", iso: 1, capitalCity: "", dates: ["" : 1]), frenchGuiana: FrenchGuiana(dates: ["" : 1]), frenchPolynesia: FrenchGuiana(dates: ["" : 1]), guadeloupe: FrenchGuiana(dates: ["" : 1]), martinique: FrenchGuiana(dates: ["" : 1]), mayotte: FrenchGuiana(dates: ["" : 1]), newCaledonia: FrenchGuiana(dates: ["" : 1]), reunion: FrenchGuiana(dates: ["" : 1]), saintBarthelemy: FrenchGuiana(dates: ["" : 1]), saintPierreAndMiquelon: FrenchGuiana(dates: ["" : 1]), stMartin: FrenchGuiana(dates: ["" : 1]), wallisAndFutuna: FrenchGuiana(dates: ["" : 1]))
}
