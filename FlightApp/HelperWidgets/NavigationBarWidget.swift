//
//  NaviigationBarWidget.swift
//  FlightApp
//
//  Created by Avinash Kumar on 04/09/23.
//

import SwiftUI

struct NavigationBarBuilder: UIViewControllerRepresentable {

    var build: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationBarBuilder>) -> UIViewController {

        UIViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationBarBuilder>) {

        if let navigationController = uiViewController.navigationController{
            self.build(navigationController)
        }
    }
}
