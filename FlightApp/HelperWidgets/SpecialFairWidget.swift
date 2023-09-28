//
//  SpecialFairWidget.swift
//  FlightApp
//
//  Created by Avinash Kumar on 04/09/23.
//

import SwiftUI

struct SpecialFairWidget: View {
    var body: some View {
        HStack{
            Text("Special Fair").foregroundColor(Constants.AppColor.grayColor)
                .font(.custom(Constants.AppFont.lightFont, size: 14))
            Button(action: {
                print("To Clickeed")
            }) {
                Image(systemName: "cloud.fill")
                           .padding()
                           .background(Color.clear)
                           .foregroundColor(Constants.AppColor.grayColor)
                           .clipShape(Circle())
                           .shadow(radius: 8)
            }
        }.frame(width: UIScreen.screenWidth, alignment: .leading).padding(.leading,16).padding(.trailing,-16)
    }
}

struct SpecialFairWidget_Previews: PreviewProvider {
    static var previews: some View {
        SpecialFairWidget()
    }
}
