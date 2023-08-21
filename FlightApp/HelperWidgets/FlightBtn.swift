//
//  FlightBtn.swift
//  FlightApp
//
//  Created by Avinash Kumar on 16/08/23.
//

import SwiftUI

struct FlightBtn: View {
    public var buttonName: String
    var flightBtnCallback: () -> () = {}
    var body: some View {
        Button(action: {
            flightBtnCallback()
        }) {
            Text(buttonName)
                .font(.custom("OpenSans-Bold", size: 16)).frame(maxWidth: .infinity, maxHeight: 20)
        }.foregroundColor(Color.white).background(Color("PrimaryColor")).clipShape(
            RoundCorner(
                cornerRadius: 16,
                maskedCorners: [.topLeft, .bottomLeft, .bottomRight]
            )//OUR CUSTOM SHAPE
        )
        .buttonStyle(.bordered)
        .controlSize(.large)
    }
}


struct FlightBtn_Previews: PreviewProvider {
    static var previews: some View {
        FlightBtn(buttonName: "Restart", flightBtnCallback: {})
    }
}
