//
//  ContentView.swift
//  FlightApp
//
//  Created by Avinash Kumar on 16/08/23.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var authService:AuthService
    var body: some View {
        ZStack{
            if(!authService.signedIn){
                VStack(alignment: .center, spacing: 10){
                    VStack() {
                        AkasaLogo()
                        PhoneNumberView()
                    }
                    Spacer()
                }
            } else {
                HomeTabBarView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
