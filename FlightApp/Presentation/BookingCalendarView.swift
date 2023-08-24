//
//  BookingCalendarView.swift
//  FlightApp
//
//  Created by Avinash Kumar on 24/08/23.
//

import SwiftUI

struct BookingCalendarView: View {
    @EnvironmentObject var flightCalendarData : FlightCalendarViewModel
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            CalendarDateModuleView(flightSelectedDate: _flightCalendarData)
            FlightBtn(buttonName: "Done", flightBtnCallback: {
                backPressed()
            })
        } .padding(.leading, 16)
            .padding(.trailing, 16)
    }
    
    func backPressed() {
        self.presentation.wrappedValue.dismiss()
    }
}

struct BookingCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        BookingCalendarView()
    }
}
