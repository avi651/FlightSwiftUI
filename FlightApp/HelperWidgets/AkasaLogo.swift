//
//  AkasaLogo.swift
//  FlightApp
//
//  Created by Avinash Kumar on 16/08/23.
//

import SwiftUI

struct AkasaLogo: View {
    var body: some View {
        Image(ImageConstants.akasaLogo)
            .resizable()
            .scaledToFit()
            .frame(width: 100.0, height: 100.0)
    }
}

struct AkasaLogo_Previews: PreviewProvider {
    static var previews: some View {
        AkasaLogo()
    }
}
