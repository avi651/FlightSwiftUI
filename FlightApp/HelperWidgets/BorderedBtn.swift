//
//  BorderedBtn.swift
//  FlightApp
//
//  Created by Avinash Kumar on 17/08/23.
//

import SwiftUI

struct BorderedBtn: View {
    public var buttonBorderName: String
    var flightBorderBtnCallback: () -> () = {}
    var body: some View {
        VStack(){
            Text(buttonBorderName)
                .font(.custom("OpenSans-Bold", size: 16)).frame(maxWidth: .infinity, maxHeight: 50).foregroundColor(Color("TextColor")).background(Color.clear)
           //Overlay the Text view with a custom rounded rectangle.
           .overlay(
               //Create a rounded rectangle with a colored outline.
               RoundedRectangle(cornerRadius: 0)
                   .stroke(Color("GrayColor"), lineWidth: 10)
               
                   //Use a custom shape to clip (round) specific corners of the rectangle.
                   .clipShape(RoundedCorners(radius: 10, corners: [.topLeft, .bottomLeft, .bottomRight]))
           ).padding(0)
               .buttonStyle(.borderless)
           .controlSize(.large)
        }
    }
}

struct RoundedCorners: Shape {
    //Provide variables to control the radius and which corners to round.
    var radius: CGFloat
    var corners: UIRectCorner
    
    //Implement the path(in:) method required for the Shape protocol.
    func path(in rect: CGRect) -> Path {
        //Create a UIBezierPath to represent the custom rounded rectangle path.
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        
        //Convert the UIBezierPath to a SwiftUI Path and return it.
        return Path(path.cgPath)
    }
}



struct BorderedBtn_Previews: PreviewProvider {
    static var previews: some View {
        BorderedBtn(buttonBorderName: "Sign up for faster checkout")
    }
}
