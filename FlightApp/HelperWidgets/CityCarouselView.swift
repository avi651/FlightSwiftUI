//
//  CityCarouselView.swift
//  FlightApp
//
//  Created by Avinash Kumar on 22/08/23.
//

import SwiftUI

struct CityCarouselView: View {
    //let roles = ["banner1", "banner2", "banner3", "banner4"]
    let cites: [CityModel] = Bundle.main.decode("City.json")
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Not sure where you go? Explore").font(.custom(Constants.AppFont.semiBoldFont, size: 13)).foregroundColor(Constants.AppColor.blackColor)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 16) {
                    ForEach(self.cites) { city in
                        HomeCarouselImg(title: city.city_name, icon: city.city_icon, backgroundImage: city.city_background_img).aspectRatio(16/9, contentMode: .fit).cornerRadius(16).shadow(radius: 4)
                    }
                }
            }
            
        }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}

struct CityCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CityCarouselView()
    }
}
