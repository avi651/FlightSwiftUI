//
//  SocialMediaBtn.swift
//  FlightApp
//
//  Created by Avinash Kumar on 17/08/23.
//

import SwiftUI

struct SocialMediaBtn: View {
    public var imageName: String
    var body: some View {
        Button(action: {}){
            Image(imageName)
                .resizable()
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

struct SocialMediaBtn_Previews: PreviewProvider {
    static var previews: some View {
        SocialMediaBtn(imageName:   Image("facebook-logo")
            .resizable()
            .scaledToFit()
            .frame(width: 60.0, height: 60.0)
            .clipShape(Circle()) as! String)
    }
}
