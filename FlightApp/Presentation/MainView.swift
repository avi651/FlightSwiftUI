//
//  ContentView.swift
//  FlightApp
//
//  Created by Avinash Kumar on 16/08/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(alignment: .center) {
            AkasaLogo()
            PhoneNumberView()
            FlightBtn(buttonName: "Sign in with OTP")
            Spacer()
            Spacer()
        }
        .padding().background(Color("Background"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
