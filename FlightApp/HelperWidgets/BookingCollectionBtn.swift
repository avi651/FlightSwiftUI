//
//  BookingCollectionBtnn.swift
//  FlightApp
//
//  Created by Avinash Kumar on 04/09/23.
//

import SwiftUI

struct BookingCollectionBtn: View {
    var body: some View {
    Text("Login").overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.green, lineWidth: 1)
                ).background(Color.gray)
    }
}

struct BookingCollectionBtn_Previews: PreviewProvider {
    static var previews: some View {
        BookingCollectionBtn()
    }
}
