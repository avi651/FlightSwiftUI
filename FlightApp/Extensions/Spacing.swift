//
//  Spacing.swift
//  FlightApp
//
//  Created by Avinash Kumar on 22/08/23.
//

import Foundation
import SwiftUI

enum Spacing: Equatable, Hashable {
    case left
    case right
}

extension View {
    func padding(sides: [Spacing], value: CGFloat = 8) -> some View {
        HStack(spacing: 0) {
            if sides.contains(.left) {
                Spacer().frame(width: value)
            }
            self
            if sides.contains(.right) {
                Spacer().frame(width: value)
            }
        }
    }
}
