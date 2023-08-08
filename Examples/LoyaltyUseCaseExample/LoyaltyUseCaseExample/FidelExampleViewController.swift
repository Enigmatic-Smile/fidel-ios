//
//  FidelExampleViewController.swift
//
//  Created by Corneliu on 13.05.2021.
//

import UIKit
import Fidel

/// The view controller that contains a button which presents the Fidel card linking UI
class FidelExampleViewController: UIViewController {

    /// Called when the card linking button is tapped
    @IBAction private func onTouchUpInsideTheLinkButton() {
        // We advise to not store the SDK Key in the codebase or in your repo,
        // but retrieve it from your servers, via one of your endpoints
        Fidel.sdkKey = "Your SDK Key"
        Fidel.programID = "Your Program ID"

        // Show your banner image on top of the card linking UI
        Fidel.bannerImage = UIImage(named: "fdl_test_banner")
        // The countries that you will allow users to pick from.
        // If only one country is set, users will not need to pick a country.
        Fidel.allowedCountries = Country.allCountries
        // Sets the country that will be selected by default when the card linking screen is opened
        Fidel.defaultSelectedCountry = .unitedArabEmirates
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

        // This code will present the Fidel card linking UI
        Fidel.start(from: self)
        
        Fidel.onResult = {
            switch $0 {
            case .enrollmentResult(let enrollmentResult):
                print("Enrolled card ID: \(enrollmentResult.cardID)")
            case .error(let error):
                print("Enrollment error: \(error.message)")
            default:
                // No other type of result should be returned for your Loyalty use case
                return
            }
        }
    }

}
