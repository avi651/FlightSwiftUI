//
//  FlightBookView.swift
//  FlightApp
//
//  Created by Avinash Kumar on 21/08/23.
//

import SwiftUI

struct FlightBookView: View {
    
    @State var fromCity: String = ""
    @State var tabBarChange = false
    
    @EnvironmentObject var flightCalendarSelectedDate : FlightCalendarViewModel
    
    var body: some View{
        VStack{
            BookingTabBarView(bookingTabBarView: $tabBarChange).frame(height: 40)
            Spacer().frame(height: 32)
            VStack{
                FlightFromToView()
            }
        }.navigationBarTitle(Text("Book a flight").font(.custom(Constants.AppFont.semiBoldFont, size: 36)))
    }
}

struct FlightBookView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBookView()
    }
}
