//
//  FlightFromToView.swift
//  FlightApp
//
//  Created by Avinash Kumar on 25/08/23.
//

import SwiftUI

struct FlightFromToView: View {
    @State var tabBarChange = false
    var body: some View {
        VStack {
            HStack{
                Button(action: {
                  print("From Clickeed")
                }) {
                    Text("From")
                        .font(.custom(Constants.AppFont.semiBoldFont, size: 36)).frame(width: UIScreen.screenWidth * 0.5, height: 70)
                }.padding(.leading, 32)
                .foregroundColor(Constants.AppColor.blackColor)
                .buttonStyle(.plain)
                .controlSize(.large)
                Button(action: {}) {
                        Image(systemName: "paperplane.fill").frame(height: 10)
                            .padding()
                            .background(Constants.AppColor.primaryColor)
                            .foregroundColor(Color.white)
                            .clipShape(Circle())
                            .shadow(radius: 4)
                }
                Button(action: {
                    print("To Clickeed")
                }) {
                    Text("To")
                        .font(.custom(Constants.AppFont.semiBoldFont, size: 36)).frame(width: UIScreen.screenWidth * 0.5, height: 70)
                }.padding(.trailing, 16).foregroundColor(Constants.AppColor.blackColor)
                    .buttonStyle(.plain)
                    .controlSize(.large)
            }
            UnderlineView(forgroundColor:  Constants.AppColor.grayColor ).frame(width: UIScreen.screenWidth)
        }
    }
}

struct FlightFromToView_Previews: PreviewProvider {
    static var previews: some View {
        FlightFromToView()
    }
}
