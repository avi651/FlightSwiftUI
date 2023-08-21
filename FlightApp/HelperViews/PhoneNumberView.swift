//
//  PhoneNumberView.swift
//  FlightApp
//
//  Created by Avinash Kumar on 16/08/23.
//

import SwiftUI
import Combine

struct PhoneNumberView: View {
    @State var navigationPlainBtn = false
    @State var presentSheet = false
    @State var countryCode : String = "+1"
    @State var countryFlag : String = "🇺🇸"
    @State var countryPattern : String = "### ### ####"
    @State var countryLimit : Int = 17
    @State var mobPhoneNumber = ""
    @State private var searchCountry: String = ""
    @Environment(\.colorScheme) var colorScheme
    @FocusState private var keyIsFocused: Bool
    
    let counrties: [CPData] = Bundle.main.decode("CountryNumbers.json")
    
    var body: some View {
        GeometryReader { geo in
            let hasHomeIndicator = geo.safeAreaInsets.bottom > 0
            NavigationStack {
                VStack() {
                    HStack {
                        Button {
                            presentSheet = true
                            keyIsFocused = false
                        } label: {
                            Text("\(countryFlag) \(countryCode)")
                                .padding(10)
                                .frame(minWidth: 80, minHeight: 47)
                                .background(backgroundColor, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
                                .foregroundColor(foregroundColor)
                        }
                        
                        TextField("", text: $mobPhoneNumber)
                            .placeholder(when: mobPhoneNumber.isEmpty) {
                                Text("Phone number")
                                    .foregroundColor(.secondary)
                            }
                            .focused($keyIsFocused)
                            .keyboardType(.numbersAndPunctuation)
                            .onReceive(Just(mobPhoneNumber)) { _ in
                                applyPatternOnNumbers(&mobPhoneNumber, pattern: countryPattern, replacementCharacter: "#")
                            }
                            .padding(10)
                            .frame(minWidth: 80, minHeight: 47)
                            .background(backgroundColor, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 15)
                    
                    FlightBtn(buttonName: "Sign in with OTP", flightBtnCallback: phoneNumberOtpCalled)
                        .disableWithOpacity(mobPhoneNumber.count < 12)
                    LabelledDivider(label: "OR").padding(.top, 16)
                    PlainTxtBtn(plainBtnName: "Sign in with password" ).padding(.top, 16)
                    BorderedBtn(buttonBorderName: "Sign up for faster checkout", flightBorderBtnCallback: {}).padding(.top, 48)
                    LabelledDivider(label: "OR").padding(.top, 16)
                    VStack(alignment: .center){
                        HStack{
                            SocialMediaBtn(imageName: ImageConstants.facebookLogo)
                            SocialMediaBtn(imageName: ImageConstants.googleLogo)
                            SocialMediaBtn(imageName: ImageConstants.appleLogo)
                        }
                    }.padding(.top,16)
                    PlainTxtBtn(plainBtnName: "Continue as guest").padding(.top, 16)
                }
                .animation(.easeInOut(duration: 0.6), value: keyIsFocused)
                .padding(.horizontal)
                
                Spacer()
                
            }
            .onTapGesture {
                hideKeyboard()
            }
            .sheet(isPresented: $presentSheet) {
                NavigationView {
                    List(filteredResorts) { country in
                        HStack {
                            Text(country.flag)
                            Text(country.name)
                                .font(.headline)
                            Spacer()
                            Text(country.dial_code)
                                .foregroundColor(.secondary)
                        }
                        .onTapGesture {
                            self.countryFlag = country.flag
                            self.countryCode = country.dial_code
                            self.countryPattern = country.pattern
                            self.countryLimit = country.limit
                            presentSheet = false
                            searchCountry = ""
                        }
                    }
                    .listStyle(.plain)
                    .searchable(text: $searchCountry, prompt: "Your country")
                }
                .presentationDetents([.medium, .large])
            }
            .presentationDetents([.medium, .large])
        }
        .ignoresSafeArea(.keyboard)
    }
    
    private func phoneNumberOtpCalled() {
        print("CallBack Called")
    }
    
    private func navigateToTabView(isNavigateTabView: Bool) {
      
    }
    
    var filteredResorts: [CPData] {
        if searchCountry.isEmpty {
            return counrties
        } else {
            return counrties.filter { $0.name.contains(searchCountry) }
        }
    }
    
    var foregroundColor: Color {
        if colorScheme == .dark {
            return Color(.white)
        } else {
            return Color(.black)
        }
    }
    
    var backgroundColor: Color {
        if colorScheme == .dark {
            return Color(.systemGray5)
        } else {
            return Color(.systemGray6)
        }
    }
}

struct PhoneNumberView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumberView()
    }
}
