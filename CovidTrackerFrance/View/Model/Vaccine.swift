//
//  Vaccine.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 21/04/2021.
//

import Foundation

struct Vaccine: Codable {
    var all: All

    enum CodingKeys: String, CodingKey {
        case all = "All"
    }
}

// MARK: - All
struct All: Codable {
    var administered, peopleVaccinated, peoplePartiallyVaccinated: Int
    var country: String
    var population, sqKMArea: Int
    var lifeExpectancy: String
    var elevationInMeters: Int
    var continent, abbreviation, location: String
    var iso: Int
    var capitalCity, updated: String

    enum CodingKeys: String, CodingKey {
        case administered
        case peopleVaccinated = "people_vaccinated"
        case peoplePartiallyVaccinated = "people_partially_vaccinated"
        case country, population
        case sqKMArea = "sq_km_area"
        case lifeExpectancy = "life_expectancy"
        case elevationInMeters = "elevation_in_meters"
        case continent, abbreviation, location, iso
        case capitalCity = "capital_city"
        case updated
    }
}
