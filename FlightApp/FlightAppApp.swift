//
//  FlightAppApp.swift
//  FlightApp
//
//  Created by Avinash Kumar on 16/08/23.
//

import SwiftUI
@main
struct FlightAppApp: App {
    let viewModel = AuthService(signedIn: false)
    let flightUserModel = FlightCalendarViewModel()
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(viewModel).environmentObject(flightUserModel)
        }
    }
}
