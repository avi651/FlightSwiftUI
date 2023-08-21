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
    var body: some Scene {
        WindowGroup {
            NavigationView{
                MainView().environmentObject(viewModel)
            }
        }
    }
}
