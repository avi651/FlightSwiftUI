//
//  CPData.swift
//  FlightApp
//
//  Created by Avinash Kumar on 16/08/23.
//

import Foundation

struct CPData: Codable, Identifiable {
    let id: String
    let name: String
    let flag: String
    let code: String
    let dial_code: String
    let pattern: String
    let limit: Int
    
    static let allCountry: [CPData] = Bundle.main.decode("CountryNumbers.json")
    static let example = allCountry[0]
}
