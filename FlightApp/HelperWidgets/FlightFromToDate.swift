//
//  FlightFromToDate.swift
//  FlightApp
//
//  Created by Avinash Kumar on 28/08/23.
//

import SwiftUI

struct FlightFromToDate: View {
    @State var tabBarChange = false
    var body: some View {
        VStack {
            HStack(){
                Button(action: {
                  print("From Clickeed")
                }) {
                    VStack{
                        Text("Departure date").foregroundColor(Constants.AppColor.grayColor)
                            .font(.custom(Constants.AppFont.lightFont, size: 14)).frame(width: UIScreen.screenWidth * 0.5, alignment: .leading)
                        Text("Wed, 23 Aug 2023")
                            .font(.custom(Constants.AppFont.semiBoldFont, size: 16)).frame(width: UIScreen.screenWidth * 0.5, alignment: .leading)
                    }
                }
                .foregroundColor(Constants.AppColor.blackColor)
                .buttonStyle(.plain)
                .controlSize(.large)
               
                Button(action: {
                    print("To Clickeed")
                }) {
                    VStack{
                        VStack{
                            Text("Return date").foregroundColor(Constants.AppColor.grayColor)
                                .font(.custom(Constants.AppFont.lightFont, size: 14)).frame(width: UIScreen.screenWidth * 0.5, alignment: .leading)
                            Text("Wed, 23 Aug 2023")
                                .font(.custom(Constants.AppFont.semiBoldFont, size: 16)).frame(width: UIScreen.screenWidth * 0.5, alignment: .leading)
                        }
                    }
                }.foregroundColor(Constants.AppColor.blackColor)
                    .buttonStyle(.plain)
                    .controlSize(.large)
            }.padding(.leading, 16).padding(.leading,32)
            UnderlineView(forgroundColor:  Constants.AppColor.grayColor )
        }.frame(width: UIScreen.screenWidth)
    }
}

struct FlightFromToDate_Previews: PreviewProvider {
    static var previews: some View {
        FlightFromToDate()
    }
}
