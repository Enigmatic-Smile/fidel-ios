//
//  FidelUIPresentingViewController.swift
//  SwiftCocoapodsExample
//
//  Created by Corneliu Chitanu on 25/10/22.
//

import Foundation
import UIKit
import Fidel


class FidelUIPresentingViewController: UIViewController {
    func embedViewController(_ viewController: UIViewController) {
        addChild(viewController)
        viewController.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewController.view)
        view.topAnchor.constraint(equalTo: viewController.view.topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: viewController.view.bottomAnchor).isActive = true
        view.leftAnchor.constraint(equalTo: viewController.view.leftAnchor).isActive = true
        view.rightAnchor.constraint(equalTo: viewController.view.rightAnchor).isActive = true
        viewController.didMove(toParent: self)
    }
    
    func presentFidelUI() {
        Fidel.start(from: self)
    }
}
