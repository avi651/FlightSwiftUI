//
//  FlightCarouselView.swift
//  FlightApp
//
//  Created by Avinash Kumar on 21/08/23.
//

import SwiftUI
import ACarousel

struct FlightCarouselView: View {
    
    let roles = ["banner1", "banner2", "banner3", "banner4"]
    
    @State var spacing: CGFloat = 10
    @State var headspace: CGFloat = 10
    @State var sidesScaling: CGFloat = 1.0
    @State var isWrap: Bool = true
    @State var autoScroll: Bool = true
    @State var time: TimeInterval = 5
    @State var currentIndex: Int = 0
    
    var body: some View {
        ZStack{
            ZStack{
                ACarousel(roles,
                          id: \.self,
                          index: $currentIndex,
                          spacing: spacing,
                          headspace: headspace,
                          sidesScaling: sidesScaling,
                          isWrap: isWrap,
                          autoScroll: autoScroll ? .active(time) : .inactive) { name in
                    Image(name).resizable().scaledToFill()
                        .frame(width: UIScreen.screenWidth, height: 300.0).clipped()
                }.frame(width: UIScreen.screenWidth + 50, height: 300)
            }
        }.overlay(PageControl(index: $currentIndex, maxIndex: roles.count - 1), alignment: .bottom)
    }
}

struct PageControl: View {
    
    @Binding var index: Int
    let maxIndex: Int
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(0...maxIndex, id: \.self) { index in
                RoundedRectangle(cornerRadius: 1.5)
                    .fill(index == self.index ? Constants.AppColor.primaryColor : Constants.AppColor.grayColor)
                    .frame(width: 30, height: 3)
            }
        }
        .padding(10)
    }
}
