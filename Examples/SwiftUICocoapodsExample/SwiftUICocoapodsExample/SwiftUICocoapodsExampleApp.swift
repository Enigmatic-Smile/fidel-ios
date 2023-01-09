//
//  SwiftUICocoapodsExampleApp.swift
//  SwiftUICocoapodsExample
//
//  Created by Corneliu Chitanu on 25/10/22.
//

import SwiftUI
import Fidel

@main
struct SwiftUICocoapodsExampleApp: App {
    
    init() {
        // Override point for customization after application launch.
        Fidel.programID = "Your program ID. Please copy it from your Fidel dashboard."
        Fidel.sdkKey = "pk_test_your_sdk_key"
        // Set the type of program that's useful for you
        Fidel.programType = .transactionStream
        // Show your banner image on top of the card linking UI
        Fidel.bannerImage = UIImage(named: "fdl_test_banner")
        // The countries that you will allow users to pick from.
        // If only one country is set, users will not need to pick a country.
        Fidel.allowedCountries = [.unitedStates, .unitedKingdom, .canada]
        // The countries that you will allow users to pick from.
        // If only one country is set, users will not need to pick a country.
        Fidel.defaultSelectedCountry = Country.unitedStates
        // The company name will be mentioned in the card linking consent text
        Fidel.companyName = "Cashback Inc."
        // The privacy URL used in the card linking consent text
        Fidel.privacyPolicyURL = "https://www.fidel.uk/"
        // If a north american country is part of the `allowedCountries` Set,
        // then this Terms & Conditions URL is mandatory
        Fidel.termsAndConditionsURL = "https://fidel.uk/docs/"
        // The program name will be mentioned in the card linking consent text
        Fidel.programName = "Fidélité"
        // The card schemes that you are supporting (use Fidel.defaultSupportedCardSchemes to allow all Fidel supported card schemes)
        Fidel.supportedCardSchemes = [.visa, .mastercard]
        // The delete instructions which will be written in the card linking consent text
        Fidel.deleteInstructions = "going to your account settings"
        // Meta data associated with the linked card.
        Fidel.metaData = ["id": "esdgfhgjg123", "custom0": "custom0key", "custom1": "firstKey"]
        // Handle the results during the card connection processes
        Fidel.onResult = self.onResult
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
    
    func onResult(_ result: FidelResult) {
        switch result {
        case .enrollmentResult(let enrollmentResult):
            print("Card enrolled \(enrollmentResult.cardID)")
        case .verificationResult(let verificationResult):
            print("Card verified \(verificationResult.cardID)")
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
