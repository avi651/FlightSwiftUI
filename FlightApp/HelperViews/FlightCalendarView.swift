//
//  FlightCalendarView.swift
//  FlightApp
//
//  Created by Avinash Kumar on 23/08/23.
//

import SwiftUI
import FSCalendar

struct CalendarDateModuleView: UIViewRepresentable {
    
    @EnvironmentObject var flightSelectedDate: FlightCalendarViewModel
    @Environment(\.presentationMode) var presentation

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> FSCalendar {
        let calendar = FSCalendar()
        calendar.delegate = context.coordinator
        calendar.dataSource = context.coordinator
        calendar.allowsMultipleSelection = true
        calendar.appearance.todayColor = UIColor.systemMint
        calendar.appearance.selectionColor = UIColor.systemBlue
        calendar.select(flightSelectedDate.date)
        return calendar
    }
    
    func updateUIView(_ uiView: FSCalendar, context: Context) {
        uiView.scrollDirection = .vertical
        uiView.pagingEnabled = false
        uiView.allowsMultipleSelection = true
        initCalendar(calendar: uiView)
    }
    
    private func initCalendar(calendar: FSCalendar) {
            calendar.frame = CGRect(x: 0, y: 0, width: UIScreen.screenWidth, height: UIScreen.screenHeight)
            calendar.appearance.weekdayTextColor = UIColor(Constants.AppColor.blackColor)
            calendar.appearance.todayColor = UIColor(Constants.AppColor.primaryColor)
            calendar.appearance.selectionColor = UIColor(Constants.AppColor.primaryColor)
            calendar.appearance.headerTitleFont = UIFont.init(name: Constants.AppFont.regularFont, size: 18)
            calendar.appearance.weekdayFont = UIFont.init(name: Constants.AppFont.regularFont, size: 16)
            calendar.appearance.titleFont = UIFont.init(name: Constants.AppFont.regularFont, size: 16)
        }
    
    class Coordinator: NSObject, FSCalendarDelegate, FSCalendarDataSource, FSCalendarDelegateAppearance {
    
        var parent: CalendarDateModuleView
        
        init(_ calender: CalendarDateModuleView) {
            self.parent = calender
        }
        
        func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
            self.parent.flightSelectedDate.date = date
        }
        
        func minimumDate(for calendar: FSCalendar) -> Date {
           return Date()
        }
        
        func maximumDate(for calendar: FSCalendar) -> Date {
            return Calendar.current.date(byAdding: .year, value: 1, to: Date()) ?? Date()
        }
    }
}
//class CalendarModule: UIViewController, FSCalendarDelegate, FSCalendarDataSource {
//    var calendar = FSCalendar()
//    var selectedDate : Date?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        calendar.scrollDirection = .vertical
//        calendar.pagingEnabled = false
//        calendar.delegate = self
//        calendar.dataSource = self
//        calendar.allowsMultipleSelection = true
//    }
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        initCalendar()
//        view.addSubview(calendar)
//    }
//
//    private func initCalendar() {
//        calendar.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
//        calendar.appearance.weekdayTextColor = UIColor(Constants.AppColor.blackColor)
//        calendar.appearance.todayColor = UIColor(Constants.AppColor.primaryColor)
//        calendar.appearance.selectionColor = UIColor(Constants.AppColor.primaryColor)
//        calendar.appearance.headerTitleFont = UIFont.init(name: Constants.AppFont.regularFont, size: 18)
//        calendar.appearance.weekdayFont = UIFont.init(name: Constants.AppFont.regularFont, size: 16)
//        calendar.appearance.titleFont = UIFont.init(name: Constants.AppFont.regularFont, size: 16)
//    }
//
//    func minimumDate(for calendar: FSCalendar) -> Date {
//        return Date()
//    }
//
//    func maximumDate(for calendar: FSCalendar) -> Date {
//        return Calendar.current.date(byAdding: .year, value: 1, to: Date()) ?? Date()
//    }
//
//}
//
//struct CalendarModuleViewController: UIViewControllerRepresentable {
//
//    @Binding var selectedDate: Date?
//    typealias UIViewControllerType = UIViewController
//
//    func makeUIViewController(context: UIViewControllerRepresentableContext<CalendarModuleViewController>) -> UIViewController {
//        let viewController = CalendarModule()
//        return viewController
//    }
//
//    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<CalendarModuleViewController>) {
//
//    }
//
//    func calendar(_ calendar: FSCalendar, didSelect date: Date, at
//     monthPosition: FSCalendarMonthPosition) {
//        print(date)
//        //parent.selectedDate = date
//    }
//
//    func makeCoordinator() -> Coordinator {
//        return Coordinator(self)
//    }
//
//    final class Coordinator: NSObject, FSCalendarDelegate {
//        private var parent: CalendarModuleViewController
//
//
//        init (_ parent: CalendarModuleViewController) {
//            self.parent = parent
//        }
//
//    }
//}
//
////extension CalendarModule{
////    class Coordinator: NSObject, FSCalendarDelegate{
////        var parent: CalendarModule
////        init(_ parent: CalendarModule) {
////            self.parent = parent
////        }
////
////        func calendar(_ calendar: FSCalendar, didSelect date: Date, at
////         monthPosition: FSCalendarMonthPosition) {
////            print(date)
////            parent.selectedDate = date
////        }
////    }
////}
//
//
//struct CalendarModuleView: View {
//
//    @ObservedObject private var userData = UserData()
//
//    var body: some View {
//        NavigationView{
//            CalendarModuleViewController(selectedDate: $userData.date)
//        }
//    }
//}
