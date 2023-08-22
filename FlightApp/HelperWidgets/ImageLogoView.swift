//
//  ImageLogoView.swift
//  FlightApp
//
//  Created by Avinash Kumar on 21/08/23.
//

import SwiftUI

struct ImageLogoView: View {
    var body: some View {
        HStack(){
            Image(ImageConstants.akasaLogo)
                .resizable()
                .scaledToFit()
                .frame(width: 80.0, height: 80.0)
        }
    }
}

struct ImageLogoView_Previews: PreviewProvider {
    static var previews: some View {
        ImageLogoView()
    }
}
