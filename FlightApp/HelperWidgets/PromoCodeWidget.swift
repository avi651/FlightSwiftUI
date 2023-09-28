//
//  PromoCodeWidget.swift
//  FlightApp
//
//  Created by Avinash Kumar on 04/09/23.
//

import SwiftUI

struct PromoCodeWidget: View {
    var body: some View {
        VStack{
            Text("Promo Code").foregroundColor(Constants.AppColor.grayColor)
                .font(.custom(Constants.AppFont.lightFont, size: 14)).frame(width: UIScreen.screenWidth, alignment: .leading).padding(.leading,16).padding(.trailing,-16)
            Text("Got a special code? Add it here for discounts")
                .foregroundColor(Constants.AppColor.grayColor)
                    .font(.custom(Constants.AppFont.lightFont, size: 16)).frame(width: UIScreen.screenWidth, alignment: .leading).padding(.leading,16).padding(.trailing,-16)
            UnderlineView(forgroundColor:  Constants.AppColor.grayColor)
        }
    }
}

struct PromoCodeWidget_Previews: PreviewProvider {
    static var previews: some View {
        PromoCodeWidget()
    }
}
