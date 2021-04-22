//
//  History.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 22/04/2021.
//

import Foundation

// MARK: - History
struct History: Codable {
    var all: AllHistory
    var frenchGuiana, frenchPolynesia, guadeloupe, martinique: FrenchGuiana
    var mayotte, newCaledonia, reunion, saintBarthelemy: FrenchGuiana
    var saintPierreAndMiquelon, stMartin, wallisAndFutuna: FrenchGuiana

    enum CodingKeys: String, CodingKey {
        case all = "All"
        case frenchGuiana = "French Guiana"
        case frenchPolynesia = "French Polynesia"
        case guadeloupe = "Guadeloupe"
        case martinique = "Martinique"
        case mayotte = "Mayotte"
        case newCaledonia = "New Caledonia"
        case reunion = "Reunion"
        case saintBarthelemy = "Saint Barthelemy"
        case saintPierreAndMiquelon = "Saint Pierre and Miquelon"
        case stMartin = "St Martin"
        case wallisAndFutuna = "Wallis and Futuna"
    }
}

// MARK: - All
struct AllHistory: Codable {
    var country: String
    var population, sqKMArea: Int
    var lifeExpectancy: String
    var elevationInMeters: Int
    var continent, abbreviation, location: String
    var iso: Int
    var capitalCity: String
    var dates: [String: Int]

    enum CodingKeys: String, CodingKey {
        case country, population
        case sqKMArea = "sq_km_area"
        case lifeExpectancy = "life_expectancy"
        case elevationInMeters = "elevation_in_meters"
        case continent, abbreviation, location, iso
        case capitalCity = "capital_city"
        case dates
    }
}
// MARK: - FrenchGuiana
struct FrenchGuiana: Codable {
    var dates: [String: Int]
}
