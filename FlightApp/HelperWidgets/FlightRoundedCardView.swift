//
//  FlightRoundedCardView.swift
//  FlightApp
//
//  Created by Avinash Kumar on 22/08/23.
//

import SwiftUI

struct FlightRoundedCardView: View {
    var body: some View {
            RoundedRectangle(cornerRadius: 16).frame(height: 100)
                .overlay(
                    HStack(alignment: .center){
                        Button(action: {}) {
                                Image(systemName: "airplane.circle.fill")
                                    .padding()
                                    .background(Constants.AppColor.primaryColor)
                                    .foregroundColor(Color.white)
                                    .clipShape(Circle())
                                    .shadow(radius: 4)
                        }.padding(16)
                        Spacer().frame(width: 1)
                        VStack(alignment: .leading, spacing: 6){
                            Text("Book a flight").font(.custom(Constants.AppFont.boldFont, size: 20))
                                .frame(maxWidth: .infinity, alignment: .leading).foregroundColor(Constants.AppColor.blackColor)
                            Text("Plan your next trip with us.").font(.custom(Constants.AppFont.semiBoldFont, size: 16))
                             .frame(maxWidth: .infinity, alignment: .leading).foregroundColor(Constants.AppColor.blackColor)
                        }
                        
                    }.frame(alignment: .leading)
                ).foregroundColor(Color.clear).background(Color.white).clipShape(
                    RoundCorner(
                        cornerRadius: 16,
                        maskedCorners: [.topLeft, .bottomLeft, .bottomRight]
                    )//OUR CUSTOM SHAPE
                ).shadow(color: Color.black.opacity(0.3), radius: 30, y:15).padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}


struct FlightRoundedCardView_Previews: PreviewProvider {
    static var previews: some View {
        FlightRoundedCardView()
    }
}
