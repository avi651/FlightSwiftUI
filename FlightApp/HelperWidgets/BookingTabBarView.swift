//
//  BookingTabBarView.swift
//  FlightApp
//
//  Created by Avinash Kumar on 25/08/23.
//

import SwiftUI

struct BookingTabBarView: View {
    
    @Binding var bookingTabBarView: Bool
    
    var body: some View {
        HStack{
            VStack{
                Button(action: {
                    self.bookingTabBarView.toggle()
                    //bookingTabBarView = false
                }){ Text("One Way") .font(.custom(Constants.AppFont.boldFont, size: 16)).foregroundColor(bookingTabBarView == false ? Constants.AppColor.primaryColor : Constants.AppColor.blackColor).frame(width: UIScreen.screenWidth * 0.5)
                }.shadow(color: Color.black.opacity(0.3), radius: 30, y:15)
                UnderlineView(forgroundColor: bookingTabBarView == false ? Constants.AppColor.primaryColor : Color.clear).frame(width: UIScreen.screenWidth * 0.5)
            }
            Spacer()
            VStack{
                Button(action: {
                    self.bookingTabBarView.toggle()
                   // bookingTabBarView = true
                }){ Text("Round Trip") .font(.custom(Constants.AppFont.boldFont, size: 16)).foregroundColor(bookingTabBarView == false ? Constants.AppColor.blackColor : Constants.AppColor.primaryColor).frame(width: UIScreen.screenWidth * 0.5)
                }.shadow(color: Color.black.opacity(0.3), radius: 30, y:15)
                UnderlineView(forgroundColor: bookingTabBarView == false ? Color.clear : Constants.AppColor.primaryColor).frame(width: UIScreen.screenWidth * 0.5)
            }
        }
    }
}

struct BookingTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        BookingTabBarView(bookingTabBarView: .constant(true))
    }
}
