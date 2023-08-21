//
//  Spacing.swift
//  FlightApp
//
//  Created by Avinash Kumar on 21/08/23.
//

import Foundation
import SwiftUI

enum Side: Equatable, Hashable {
    case left
    case right
    case top
}

extension View {
    func padding(sides: [Side], value: CGFloat = 16) -> some View {
        HStack(spacing: 0) {
            if sides.contains(.left) {
                Spacer().frame(width: value)
            }
            self
            if sides.contains(.right) {
                Spacer().frame(width: value)
            }
            self
            if sides.contains(.top) {
                Spacer().frame(width: value)
            }
        }
    }
}
