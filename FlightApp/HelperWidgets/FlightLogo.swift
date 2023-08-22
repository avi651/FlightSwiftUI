//
//  FlightLogo.swift
//  FlightApp
//
//  Created by Avinash Kumar on 16/08/23.
//

import SwiftUI

struct FlightLogo: View {
    var body: some View {
        HStack(alignment: .center){
            Image(ImageConstants.flightLogo)
                .resizable()
                .scaledToFit().cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("PrimaryColor"), lineWidth: 1))
                .shadow(radius: 4)
                .frame(width: 200.0, height: 80.0)
        }
    }
}

struct FlightLogo_Previews: PreviewProvider {
    static var previews: some View {
        FlightLogo()
    }
}
