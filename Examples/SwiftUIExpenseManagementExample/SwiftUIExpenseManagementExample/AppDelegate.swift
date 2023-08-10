//
//  AppDelegate.swift
//  Fidel
//
//  Created by Corneliu Chitanu on 15/06/23.
//  Copyright © 2023 Fidel. All rights reserved.
//

import UIKit
import Fidel
import SwiftUI

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    let cardStore = InMemoryCardStore()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        initFidel()
        
        let rootViewController = RootViewController()
        let cardsView = CardsListView(cardStore: cardStore, delegate: rootViewController)
        rootViewController.addChild(UIHostingController(rootView: cardsView))
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
        
        return true
    }
    
    private func initFidel() {
        // Override point for customization after application launch.
        Fidel.sdkKey = "Your SDK Key"
        
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
        Fidel.supportedCardSchemes = [.visa]
        
        // The delete instructions which will be written in the card linking consent text
        Fidel.deleteInstructions = "going to your account settings"
        
        // Meta data associated with the linked card.
        Fidel.metaData = ["id": "esdgfhgjg123", "custom0": "custom0key", "custom1": "firstKey"]
        // Set it to provide a choice for the cardholder to verify the card
        // on the spot or express the choice to delegate card verification
        // to a third-party entity
        Fidel.thirdPartyVerificationChoice = true
        
        // This callback is called when card verification starts;
        // might be useful to get the card ID and consent ID,
        // the information needed to verify a card via the Fidel.verifyCard function.
        // However we recommend using the `card.verification.started` webhook whenever possible.
        Fidel.onCardVerificationStarted = cardStore.onCardVerificationStarted
        
        // When `thirdPartyVerificationChoice` parameter is `true`,
        // you will receive updates in this callback about the choice expressed by the cardholder
        Fidel.onCardVerificationChoiceSelected = {
            switch ($0) {
            case .onTheSpot:
                print("Cardholder chose to verify the card on the spot")
            case .delegatedToThirdParty:
                print("Cardholder expressed the choice to delegate card verification to a third-party entity")
            @unknown default:
                print("Cardholder expressed an unknown choice")
            }
        }
        
        Fidel.onResult = cardStore.onFidelResult
    }
}

