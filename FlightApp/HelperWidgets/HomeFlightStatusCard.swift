//
//  HomeFlightStatusCard.swift
//  FlightApp
//
//  Created by Avinash Kumar on 22/08/23.
//

import SwiftUI

struct HomeFlightStatusCard: View {
    var body: some View {
            HStack{
                FlightStatusCard(imageIcon: "checkmark.seal.fill", textName: "Check-In")
                FlightStatusCard(imageIcon: "deskclock.fill", textName: "Flight Status")
                FlightStatusCard(imageIcon: "airplane", textName: "Manage")
            }
    }
}

struct HomeFlightStatusCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeFlightStatusCard()
    }
}
