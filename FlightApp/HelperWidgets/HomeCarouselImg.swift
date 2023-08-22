//
//  HomeCarouselImg.swift
//  FlightApp
//
//  Created by Avinash Kumar on 22/08/23.
//

import SwiftUI

struct HomeCarouselImg: View {
    public var title: String
    public var icon: String
    public var backgroundImage: String
    var body: some View {
        ZStack {
            Image(backgroundImage).resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(16)
                .shadow(radius: 4).overlay(HStack{
                    Text(title).font(.custom(Constants.AppFont.semiBoldFont, size: 20)).foregroundColor(Color.white).padding(.top, 160).padding(.leading, 48)
                    Spacer()
                    Image(systemName: icon).frame(height: 10)
                        .padding()
                        .background(Constants.AppColor.primaryColor)
                        .foregroundColor(Color.white)
                        .clipShape(Circle()).padding(.top, 160).padding(.trailing, 48)
                })
           
        }.frame(width: 300, height: 250)
        /*ZStack {
            Image(backgroundImage).resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(16)
                .shadow(radius: 4).overlay(Text(title).font(.custom(Constants.AppFont.semiBoldFont, size: 20)).padding(EdgeInsets(top: 0, leading: 50, bottom: 24, trailing: 16))
                    .foregroundColor(.white), alignment: .bottomLeading)
            Image(systemName: icon).frame(height: 10)
                .padding()
                .background(Constants.AppColor.primaryColor)
                .foregroundColor(Color.white)
                .clipShape(Circle()).padding(EdgeInsets(top: 170, leading: 230, bottom: 0, trailing: 0))
           
        }.frame(width: 300, height: 250)*/
    }}

struct HomeCarouselImg_Previews: PreviewProvider {
    static var previews: some View {
        HomeCarouselImg(title: "", icon: "", backgroundImage: "")
    }
}
