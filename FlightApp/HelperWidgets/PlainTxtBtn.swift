//
//  PlainTxtBtn.swift
//  FlightApp
//
//  Created by Avinash Kumar on 17/08/23.
//

import SwiftUI

struct PlainTxtBtn: View {
    @EnvironmentObject var authService:AuthService
    public var plainBtnName: String
    var body: some View {
            Button(action: {
                self.authService.signIn()
            }) {
                Text(plainBtnName)
                    .font(.custom("OpenSans-Bold", size: 16)).frame(maxWidth: .infinity, maxHeight: 20)
            }.foregroundColor(Color("PrimaryColor")).background(Color.white).clipShape(
                RoundCorner(
                    cornerRadius: 16,
                    maskedCorners: [.topLeft, .bottomLeft, .bottomRight]
                )//OUR CUSTOM SHAPE
            )
            .buttonStyle(.plain)
            .controlSize(.large)
    }
}

struct PlainTxtBtn_Previews: PreviewProvider {
    static var previews: some View {
        PlainTxtBtn(plainBtnName: "Sign in with password")
    }
}
