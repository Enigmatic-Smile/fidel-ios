//
//  FidelExampleViewController.swift
//  SwiftCocoapodsExample
//
//  Created by Corneliu on 13.05.2021.
//

import UIKit
import Fidel

/// The view controller that contains a button which presents the Fidel card linking UI
class FidelExampleViewController: UIViewController {

    /// Called when the card linking button is tapped
    @IBAction private func onTouchUpInsideTheLinkButton() {
        Fidel.programId = "Your program ID. Please copy it from your Fidel dashboard."
        Fidel.apiKey = "pk_test_your_sdk_key"

        // Show your banner image on top of the card linking UI
        Fidel.bannerImage = UIImage(named: "fdl_test_banner")
        // The countries that you will allow users to pick from.
        // If only one country is set, users will not need to pick a country.
        Fidel.allowedCountries = Country.allCountries
        // Sets the country that will be selected by default when the card linking screen is opened
        Fidel.defaultSelectedCountry = .unitedStates
        // The company name will be mentioned in the card linking consent text
        Fidel.companyName = "Cashback Inc."
        // The privacy URL used in the card linking consent text
        Fidel.privacyURL = "https://www.fidel.uk/"
        // If a north american country is part of the `allowedCountries` Set,
        // then this Terms & Conditions URL is mandatory
        Fidel.termsConditionsURL = "https://fidel.uk/docs/"
        // The program name will be mentioned in the card linking consent text
        Fidel.programName = "Fidélité"
        // The card schemes that you are supporting (use Fidel.defaultSupportedCardSchemes to allow all Fidel supported card schemes)
        Fidel.supportedCardSchemes = [.visa, .mastercard]
        // The delete instructions which will be written in the card linking consent text
        Fidel.deleteInstructions = "going to your account settings"
        // Meta data associated with the linked card.
        Fidel.metaData = ["id": "esdgfhgjg123", "custom0": "custom0key", "custom1": "firstKey"]

        // This code will present the Fidel card linking UI
        Fidel.present(self, onCardLinkedCallback: { (card: LinkResult) in
            // Here you can handle a succesful card linking result
            print(card.id)
        }, onCardLinkFailedCallback: { (err: LinkError) in
            // Here you can handle a card linking error
            print(err.message)
        })
    }

}

