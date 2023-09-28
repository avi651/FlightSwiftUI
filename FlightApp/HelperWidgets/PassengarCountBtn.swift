//
//  PassengarCountBtn.swift
//  FlightApp
//
//  Created by Avinash Kumar on 04/09/23.
//

import SwiftUI

struct PassengarCountBtn: View {
    var body: some View {
        VStack{
            Text("Passanger(s)").foregroundColor(Constants.AppColor.grayColor)
                .font(.custom(Constants.AppFont.lightFont, size: 14)).frame(width: UIScreen.screenWidth, alignment: .leading).padding(.leading,16).padding(.trailing,-16)
            Text("01")
                .font(.custom(Constants.AppFont.semiBoldFont, size: 16)).frame(width: UIScreen.screenWidth, alignment: .leading).padding(.leading,16).padding(.trailing,-16)
            UnderlineView(forgroundColor:  Constants.AppColor.grayColor)
        }
    }
}

struct PassengarCountBtn_Previews: PreviewProvider {
    static var previews: some View {
        PassengarCountBtn()
    }
}
