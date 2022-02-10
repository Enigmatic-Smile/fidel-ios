//
//  FidelExampleViewController.swift
//  SwiftExample
//
//  Created by Corneliu on 13.05.2021.
//

import UIKit
import Fidel

/// The view controller that contains a button which presents the Fidel card linking UI
class FidelExampleViewController: UIViewController {

    /// Called when the card linking button is tapped
    @IBAction private func onTouchUpInsideTheLinkButton() {
        // This code will present the Fidel card linking UI
        Fidel.start(from: self)
    }

}
