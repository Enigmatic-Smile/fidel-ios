//
//  CardsHostingViewController.swift
//
//  Created by Corneliu Chitanu on 15/06/23.
//  Copyright © 2023 Fidel. All rights reserved.
//

import Foundation
import SwiftUI
import Fidel

class RootViewController: UIViewController {
    override func addChild(_ childController: UIViewController) {
        super.addChild(childController)
        guard let childView = childController.view else {
            return
        }
        view.addSubview(childView)
        childView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            childView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            childView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            childView.topAnchor.constraint(equalTo: view.topAnchor),
            childView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        childController.didMove(toParent: self)
    }
}

extension RootViewController: MainViewDelegate {
    func didTapToAddACorporateCard() {
        Fidel.programID = "Your program ID"
        Fidel.programType = .transactionStream
        Fidel.thirdPartyVerificationChoice = true
        Fidel.start(from: self)
    }
    
    func didTapToAddACardInAStreamProgram() {
        Fidel.programID = "Your program ID"
        Fidel.programType = .transactionStream
        Fidel.thirdPartyVerificationChoice = false
        Fidel.start(from: self)
    }
    
    func didTapToVerify(_ card: Card) {
        guard let consentID = card.consentID else { return }
        let cardVerificationConfiguration = CardVerificationConfiguration(
            cardID: card.id,
            consentID: consentID,
            last4Digits: card.last4Digits
        )
        Fidel.programID = "Your program ID"
        Fidel.verifyCard(from: self, cardVerificationConfiguration: cardVerificationConfiguration)
    }
}
