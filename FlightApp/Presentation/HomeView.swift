//
//  HomeView.swift
//  FlightApp
//
//  Created by Avinash Kumar on 21/08/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack {
                        FlightCarouselView()
                        VStack{
                            FlightRoundedCardView().padding(.top, -50)
                            Spacer().frame(height: 16)
                            HomeFlightStatusCard()
                            Spacer().frame(height:16)
                            CityCarouselView()
                        
                        }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                    }
                }.overlay(ImageLogoView().padding(.leading, 16), alignment: .topLeading)
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }.expandViewOutOfSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
