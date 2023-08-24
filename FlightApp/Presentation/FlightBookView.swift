//
//  FlightBookView.swift
//  FlightApp
//
//  Created by Avinash Kumar on 21/08/23.
//

import SwiftUI

struct FlightBookView: View {
    @EnvironmentObject var flightCalendarSelectedDate : FlightCalendarViewModel
    
    var body: some View {
        NavigationView{
            List{
                VStack{
                    Text("Task due date: \(flightCalendarSelectedDate.date, formatter: DateFormat.taskDateFormat)")
                }
                NavigationLink(destination: BookingCalendarView(flightCalendarData: _flightCalendarSelectedDate)){
                    Button(action: {
                    }){
                        Text("Click")
                            .frame(width: 40, height: 40)
                            .padding(25)
                            .foregroundColor(Color(red: 52/255, green: 57/255, blue: 133/255))
                            .background(
                                Circle()
                                    .fill(
                                        .shadow(.inner(color: Color(red: 197/255, green: 197/255, blue: 197/255),radius: 5, x:3, y: 3))
                                        .shadow(.inner(color: .white, radius:4, x: -3, y: -3))
                                    )
                                    .foregroundColor(Color.white))
                    }
                }
            }
        } .navigationBarTitle(Text("Featured"))
    }
}



struct FlightBookView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBookView()
    }
}
