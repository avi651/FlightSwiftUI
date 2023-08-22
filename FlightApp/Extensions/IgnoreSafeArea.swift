//
//  IgnoreSafeArea.swift
//  FlightApp
//
//  Created by Avinash Kumar on 22/08/23.
//

import Foundation
import SwiftUI

/**
 This extension is needed because of deprecating edgesignoringsafearea for iOS 13.0–15.2
 https://developer.apple.com/documentation/swiftui/menu/edgesignoringsafearea(_:)
 */
public extension View {
    @ViewBuilder
    func expandViewOutOfSafeArea(_ edges: Edge.Set = .all) -> some View {
        if #available(iOS 14, *) {
            self.ignoresSafeArea(edges: edges)
        } else {
            self.edgesIgnoringSafeArea(edges) // deprecated for iOS 13.0–15.2, look upper
        }
    }
}
