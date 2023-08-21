//
//  Constants.swift
//  FlightApp
//
//  Created by Avinash Kumar on 21/08/23.
//

import Foundation
import SwiftUI

struct Constants {
    struct AppColor {
        static let primaryColor = Color("PrimaryColor")
        static let grayColor = Color("GrayColor")
    }
    
    struct AppFont {
        static let extraBoldFont = "OpenSans-ExtraBold"
        static let boldFont = "OpenSans-Bold"
        static let semiBoldFont = "OpenSans-SemiBold"
        static let regularFont = "OpenSans-Regular"
        static let lightFont = "OpenSans-Light"
    }
}

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

