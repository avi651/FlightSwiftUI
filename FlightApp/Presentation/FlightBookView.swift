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
        NavigationView{
            ZStack {
                VStack(alignment: .leading){
                    Text("Book a flight") .font(.custom("OpenSans-Bold", size: 22)).padding(.leading, 16)
                    Spacer().frame(height: 32)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack{
                            BookingTabBarView(bookingTabBarView: $tabBarChange).frame(height: 40)
                            Spacer().frame(height: 32)
                            FlightFromToView()
                        }
                        Spacer().frame(height: 32)
                        FlightFromToDate()
                        PassengarCountBtn()
                        PromoCodeWidget()
                        SpecialFairWidget()
                        Spacer().frame(height: 48)
                        FlightBtn(buttonName: "Sign in with OTP", flightBtnCallback: {}).padding(.leading, 16).padding(.trailing, 16)
                        
                    }
                }
            }
        }.expandViewOutOfSafeArea()
    }
}

struct FlightBookView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBookView()
    }
}
