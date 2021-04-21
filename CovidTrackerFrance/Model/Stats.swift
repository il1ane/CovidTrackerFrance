//
//  Stats.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 17/04/2021.
//

import Foundation
import CoreData

struct Stats : Codable, Hashable {
    public var infected:Int32
    public var recoverd:Int32
    public var hospitalDeceased:Int32
    public var hospitalized: Int32
    public var newlyHospitalized:Int32
    public var intensiveCare:Int32
    public var sourceUrl:String
    public var lastUpdatedAtApify:String
    public var readMe:String
    public var lastUpdatedAtSource:String
}

struct DataSet {
    static var datas = Stats(infected: 0, recoverd: 0, hospitalDeceased: 0, hospitalized: 0, newlyHospitalized: 0, intensiveCare: 0, sourceUrl: "-", lastUpdatedAtApify: "-", readMe: "-", lastUpdatedAtSource: "-")
}
