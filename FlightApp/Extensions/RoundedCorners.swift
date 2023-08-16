//
//  RoundedCorners.swift
//  FlightApp
//
//  Created by Avinash Kumar on 16/08/23.
//

import SwiftUI

struct RoundCorner: Shape {
    
    // MARK: - PROPERTIES
    
    var cornerRadius: CGFloat
    var maskedCorners: UIRectCorner
    
    
    // MARK: - PATH
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: maskedCorners, cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        return Path(path.cgPath)
    }
}

// MARK: - PREVIEW

struct RoundCorner_Previews: PreviewProvider {
    static var previews: some View {
        RoundCorner(cornerRadius: 20, maskedCorners: .allCorners)
    }
}
