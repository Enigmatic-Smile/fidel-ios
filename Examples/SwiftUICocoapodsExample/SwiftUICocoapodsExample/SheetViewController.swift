//
//  SheetViewWrappingController.swift
//  SwiftUICocoapodsExample
//
//  Created by Corneliu Chitanu on 25/10/22.
//

import Foundation
import SwiftUI
import Fidel

struct SheetViewController: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIViewController
    
    let fidelPresentingController = FidelUIPresentingViewController()
    
    func makeUIViewController(context: Context) -> UIViewController {
        let contentView = SheetView {
            fidelPresentingController.presentFidelUI()
        }
        fidelPresentingController.embedViewController(
            UIHostingController(rootView: contentView)
        )
        return fidelPresentingController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
