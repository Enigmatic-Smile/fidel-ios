//
//  InMemoryCardStore.swift
//
//  Created by Corneliu Chitanu on 15/06/23.
//  Copyright © 2023 Fidel. All rights reserved.
//

import Foundation
import Fidel

class InMemoryCardStore: ObservableObject {
    @Published var cards: [Card] = []
    
    func onCardVerificationStarted(consentDetails: ConsentDetails) {
        guard let index = cards.firstIndex(where: { $0.id == consentDetails.cardID }) else { return }
        cards[index].consentID = consentDetails.consentID
        cards[index].needsVerification = true
    }
    
    func onFidelResult(_ result: FidelResult) {
        switch result {
        case .enrollmentResult(let enrollmentResult):
            let card = Card(id: enrollmentResult.cardID,
                            last4Digits: enrollmentResult.cardLastNumbers ?? "****",
                            scheme: enrollmentResult.scheme,
                            needsVerification: false,
                            isVerified: false)
            cards.append(card)
        case .verificationResult(let verificationResult):
            if let index = cards.firstIndex(where: { $0.id == verificationResult.cardID }) {
                cards[index].isVerified = true
            }
        case .error(let fidelError):
            print("error: type: \(fidelError.type), message: \(fidelError.message)")
            switch fidelError.type {
            case .enrollmentError(let enrollmentError):
                switch enrollmentError {
                case .cardAlreadyExists:
                    print("card was already enrolled")
                default:
                    print("other enrollment error")
                }
            case .verificationError(let verificationError):
                switch verificationError {
                case .incorrectAmount, .incorrectAmountCode:
                    print("Incorrect amount")
                default:
                    print("other verification error")
                }
            case .sdkConfigurationError:
                print("the SDK should be provided with all the information")
            case .userCanceled:
                print("the user cancelled the flow")
            case .deviceNotSecure:
                print("the device is not secure for connecting cards with your program")
            @unknown default:
                print("unknown error")
            }
        @unknown default:
            print("unknown result")
        }
    }
}
