//
//  TabBarView.swift
//  FlightApp
//
//  Created by Avinash Kumar on 21/08/23.
//

import SwiftUI

struct HomeTabBarView: View {
    @State private var selection = 1
    
    var body: some View {
        TabView(selection:$selection){
            HomeView().tabItem{
                Label("Home", systemImage: "homekit")
            }.tag(0)
            FlightBookView().tabItem{
                Label("Book", systemImage: "airplane.departure")
            }.tag(1)
            FlightBookView().tabItem{
                Label("Me", systemImage: "figure.american.football")
            }.tag(2)
            MoreView().tabItem{
                Label("More", systemImage: "scribble")
            }.tag(3)
        }.accentColor(Color("PrimaryColor"))
    }
}

struct HomeTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabBarView()
    }
}
