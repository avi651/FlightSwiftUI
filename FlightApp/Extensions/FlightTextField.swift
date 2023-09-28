//
//  FlightTextField.swift
//  FlightApp
//
//  Created by Avinash Kumar on 25/08/23.
//

import SwiftUI
import Combine
import Foundation

public struct FlightTextField: View {
    
    final class FlightTextFieldModel: ObservableObject {
        
        @Published var text: String = ""
        var placeholder: String = ""
        var currentValue: String = ""
        var cancellables: Set<AnyCancellable> = Set<AnyCancellable>()
        
        init() {
            self.$text
                .sink(receiveValue: { value in
                    self.currentValue = value
                }).store(in: &cancellables)
        }
    }
    
    @ObservedObject var flightTextFieldModel: FlightTextField.FlightTextFieldModel = FlightTextField.FlightTextFieldModel()
    
    
    public init(placeholder: String,
                title: String) {
        
        self.flightTextFieldModel.placeholder = placeholder
        self.flightTextFieldModel.text = title
    }
    
    
    public var body: some View {
        VStack{
            ZStack {
                
                HStack {
                    
                    Text(self.flightTextFieldModel.placeholder)
                        .font(self.flightTextFieldModel.currentValue.isEmpty ? .body : .caption)
                        .foregroundColor(self.flightTextFieldModel.currentValue.isEmpty ? Color.gray : Color.gray.opacity(0.5))
                        .offset(x: 0,
                                y: self.flightTextFieldModel.currentValue.isEmpty ? 0 : -15)
                        .transition(.slide)
                        .transition(.scale)
                    
                    Spacer()
                }
                .animation(.easeIn(duration: 0.1))
                
                TextField("",
                          text: self.$flightTextFieldModel.text)
            }.padding(.leading, 16)
            UnderlineView(forgroundColor:  Constants.AppColor.grayColor ).frame(width: UIScreen.screenWidth)
        }
    }
}


struct FlightTextField_Previews: PreviewProvider {
    static var previews: some View {
        FlightTextField(placeholder: "Email", title: "")
    }
}
