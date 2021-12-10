//
//  FidelExampleViewController.m
//  ObjCExample
//
//  Created by Corneliu on 13.05.2021.
//

#import "FidelExampleViewController.h"
@import Fidel;

@implementation FidelExampleViewController

/// Called when the card linking button is tapped
- (IBAction)onTouchUpInsideLinkButton:(id)sender {
    FLFidel.programId = @"Your program ID. Please copy it from your Fidel dashboard.";
    FLFidel.apiKey = @"pk_test_your_sdk_key";

    // Show your banner image on top of the card linking UI
    FLFidel.bannerImage = [UIImage imageNamed:@"fdl_test_banner"];
    // The countries that you will allow users to pick from.
    // If only one country is set, users will not need to pick a country.
    FLFidel.objc_allowedCountries = @[@(FLCountryIreland), @(FLCountryUnitedKingdom), @(FLCountryUnitedArabEmirates), @(FLCountryJapan), @(FLCountryUnitedStates), @(FLCountrySweden)];
    // Sets the country that will be selected by default when the card linking screen is opened
    FLFidel.defaultSelectedCountry = FLCountrySweden;
    // The company name will be mentioned in the card linking consent text
    FLFidel.companyName = @"Cashback Inc.";
    // The privacy URL used in the card linking consent text
    FLFidel.privacyURL = @"https://www.fidel.uk/";
    // If a north american country is part of the `objc_allowedCountries` NSSet,
    // then this Terms & Conditions URL is mandatory
    FLFidel.termsConditionsURL = @"https://fidel.uk/docs/";
    // The program name will be mentioned in the card linking consent text
    FLFidel.programName = @"Fidélité";
    // The card schemes that you are supporting
    FLFidel.objc_supportedCardSchemes = [NSSet setWithObjects:@(FLCardSchemeVisa), @(FLCardSchemeMastercard), @(FLCardSchemeAmericanExpress), nil];
    // The delete instructions which will be written in the card linking consent text
    FLFidel.deleteInstructions = @"going to your account settings";
    // Meta data associated with the linked card.
    FLFidel.metaData = @{@"id": @"esdgfhgjg123", @"custom0": @"custom0key", @"custom1": @"firstKey"};

    // This code will present the Fidel card linking UI
    [FLFidel present:self onCardLinkedCallback:^(FLLinkResult * _Nonnull linkResult) {
            // Here you can handle a succesful card linking result
            NSLog(@"Link ID: %@", linkResult.id);
        } onCardLinkFailedCallback:^(FLLinkError * _Nonnull linkError) {
            NSLog(@"Error message: %@", linkError.message);
        }];
}

@end

