//
//  FlightStatusCard.swift
//  FlightApp
//
//  Created by Avinash Kumar on 22/08/23.
//

import SwiftUI

struct FlightStatusCard: View {
    public var imageIcon: String
    public var textName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 16).frame(height: 100).frame(width: 120)
                .overlay(
                    VStack{
                        Spacer()
                        Button(action: {}) {
                                Image(systemName: imageIcon).frame(height: 10)
                                    .padding()
                                    .background(Constants.AppColor.primaryColor)
                                    .foregroundColor(Color.white)
                                    .clipShape(Circle())
                                    .shadow(radius: 4)
                        }
                        Text(textName).minimumScaleFactor(0.5).font(.custom(Constants.AppFont.semiBoldFont, size: 13)).foregroundColor(Constants.AppColor.blackColor)
                        Spacer()
                    }.frame(alignment: .leading)
                ).foregroundColor(Color.clear).background(Color.white).clipShape(
                    RoundCorner(
                        cornerRadius: 16,
                        maskedCorners: [.topLeft, .bottomLeft, .bottomRight, .topRight]
                    )//OUR CUSTOM SHAPE
                ).shadow(color: Color.black.opacity(0.3), radius: 30, y:15)
    }
}

struct FlightStatusCard_Previews: PreviewProvider {
    static var previews: some View {
        FlightStatusCard(imageIcon: "airplane.circle.fill", textName: "Book a flight")
    }
}
