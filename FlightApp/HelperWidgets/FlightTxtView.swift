//
//  FlightTxtView.swift
//  FlightApp
//
//  Created by Avinash Kumar on 16/08/23.
//

import SwiftUI

struct FlightTxtView: View {
    @Binding var flightTxtView: String
    var userName: String
    var body: some View {
        HStack(alignment: .center) {
            TextField(userName, text: $flightTxtView).font(.custom("OpenSans-Regular", size: 16))
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }.padding().background(Color("LightGrayColor")).cornerRadius(8)
    }
}

struct FlightTxtView_Previews: PreviewProvider {
    static var previews: some View {
        FlightTxtView(flightTxtView: .constant("Mobile"), userName: "Mobile Number")
    }
}
