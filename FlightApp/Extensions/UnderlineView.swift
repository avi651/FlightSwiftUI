//
//  UnderlineView.swift
//  FlightApp
//
//  Created by Avinash Kumar on 25/08/23.
//

import SwiftUI

struct UnderlineView: View {
    var forgroundColor: Color
    var body: some View {
        GeometryReader { proxy in
            Rectangle().frame(width: proxy.size.width, height: 1).foregroundColor(forgroundColor).shadow(color: Color.black.opacity(0.3), radius: 30, y:15)
        }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}

struct UnderlineView_Previews: PreviewProvider {
    static var previews: some View {
        UnderlineView(forgroundColor: Constants.AppColor.grayColor)
    }
}
