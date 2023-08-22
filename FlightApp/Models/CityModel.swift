//
//  CityModel.swift
//  FlightApp
//
//  Created by Avinash Kumar on 22/08/23.
//

import Foundation

struct CityModel: Codable, Identifiable {
    let id: String
    let city_name: String
    let city_background_img: String
    let city_icon: String
    
    static let allCityModel: [CityModel] = Bundle.main.decode("City.json")
    static let cityModelData = allCityModel[0]
}
