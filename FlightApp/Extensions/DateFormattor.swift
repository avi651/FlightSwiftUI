//
//  DateFormattor.swift
//  FlightApp
//
//  Created by Avinash Kumar on 24/08/23.
//

import Foundation

class DateFormat{
    
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
}
