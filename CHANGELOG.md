# Fidel iOS SDK Change log

## 1.10.0
- Added the `defaultSelectedCountry` property which sets the country that will be selected by default, when opening the card enrollment screen.

## 1.9.0

- Removed the card scanning confirmation screen. Users can confirm their card information by checking the information in the Fidel card enrollment screen.

## 1.8.8

- Fixed the bug that does not allow enrollment for cards that expire in the current month.

## 1.8.7

- Add the United Arab Emirates country of issuance option

## 1.8.6

- Add more documentation for the Fidel SDK APIs
- Deprecate `mapped`, `type`, `updated` fields from the `LinkResult` class.

## 1.8.5

- Use the XCFramework package format for the Fidel SDK
- Compile the package with Swift 5.4
- Can run the SDK in simulators on M1 machines.

## 1.8.5-rc2

- Use the XCFramework package format for the Fidel SDK
- Compile the package with Swift 5.4
- Can run the SDK in simulators on M1 machines.

## 1.8.5-rc1

- Use the XCFramework package format for the Fidel SDK
- Compile the package with Swift 5.4
- Does not yet support running on Simulators with the most common `Release` configurations.

## 1.8.4

- If available, the LinkResult object now includes the `firstNumbers` field. So, if in the Fidel Dashboard, under the your security settings, you allow showing the first numbers of the linked card numbers, the information will be available in the LinkResult object too. If you do not allow showing the first numbers in the linking result, the `firstNumbers` field will return `"******"` (just like the object which the Fidel API returns).

## 1.8.3

- Compiled the SDK for Swift 5.3.1
- Now the SDK allows you to select multiple allowed countries from which the user can pick. Please check the docs for the new `allowedCountries` property. If your project is an Objective-C project, check the `objc_allowedCountries` property.
- Removed the `Fidel.country` property. To set a default country and not allow the user to pick the country, set a single country in the new `Fidel.allowedCountries` array.
- Removed the `.noDefault` option from the `Country` enum.

## 1.8.2

- Compiled the SDK for Swift 5.3
- Projects with this version of the Fidel SDK integrated will:
  - work fine if you build for a **real device**, with both `Debug` and `Release` configurations. It works on all architectures.
  - not build on **Simulators**, with the `arm64` architecture. We're working on eliminating this inconvenience.
  - To avoid this incovenience, when installing this version with Cocoapods, the following build settings will be added to your project:

```ruby
s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
```

So if you install this version with Cocoapods, you'll be able to build on both Simulators and real devices.

You can confidently launch your apps to the AppStore. We only excluded the architecture for Simulators.

## 1.8.1

- Fixed bug that did not set and highlight the privacy policy link for countries outside of North-America.
- The SDK compiles for simulators from Objective-C projects too.

## 1.8.0

- Localised the SDK for French and Swedish users.
- The terms & conditions text now adjusts to the card scheme name that the user inputs (Visa, MasterCard or Amex).
- If you set the default country of the SDK to USA or Canada (with `Fidel.country` property) or, if you do not set a default country, the terms and conditions text will adjust depending on the country you have set. For USA & Canada, the following would be an example Terms & Conditions text, for Cashback Inc (an example company):

*By submitting your card information and checking this box, you authorize Visa to monitor and share transaction data with Fidel (our service provider) to participate in  program. You also acknowledge and agree that Fidel may share certain details of your qualifying transactions with Cashback Inc to enable your participation in  program and for other purposes in accordance with the Cashback Inc Terms and Conditions, Cashback Inc privacy policy and Fidel’s Privacy Policy. You may opt-out of transaction monitoring on the linked card at any time by contacting support.*

For the rest of the world:

*I authorise Visa to monitor my payment card to identify transactions that qualify for a reward and for Visa to share such information with Cashback Inc, to enable my card linked offers and target offers that may be of interest to me. For information about Cashback Inc privacy practices, please see the privacy policy. You may opt-out of transaction monitoring on the payment card you entered at any time by contacting support.*

- Added the `programName` and `termsConditionsURL` properties. They are used when building the new USA / Canada specific terms and conditions text that the user must agree with, before linking a card. If you set the `Fidel.country` property to a USA or Canada, it's mandatory for you to provide your terms and conditions URL via `Fidel.termsConditionsURL`. If you do not provide it, you will receive an error when you try to open Fidel's linking screen.
- Fixed some small bugs.

## 1.7.1

- The Swift 5.2.2 compiled SDK now has simulator support from Objective-C projects.

## 1.7.0

- The SDK compiled for Swift 5.2.2

## 1.6.2

- Fixed a small bug related to the country property of the SDK.

## 1.6.1

- Compiled with Swift 5.1.2.
- Supports Xcode 11.2.1 and iOS 13.2.
- Fixed the bug that deleted the `metaData` object after the first card linking request.

## 1.6.0

- Compiled with Swift 5.1.
- Supports Xcode 11 and iOS 13.
- Has a Dark Appearance.

## 1.5.1

- Added new property that lets you define the card schemes that you suppport (`supportedCardSchemes`).
- Generated the Objective-C `Fidel-Swift.h` file with Xcode 10.2. Added the generated header file contents that provides support to run your Objective-C project on the simulator as well.

## 1.5.0

- The Fidel iOS SDK is now compiled with Swift 5

## 1.4.4
- Added the Canada country option

## 1.4.3
- Add support for American Express test cards

## 1.4.2
- Hidden the PayPal logo in the card scanning UI.
- Notifying in the `onCardLinkFailedCallback` when the user cancels card linking. The `error.code` is `user-canceled`. The error message is `User canceled card linking.`
- Hidden the "select country" bar on all-screen iPhones.
- Added the Japan country option.
- Disabled CardIO manual card details entry forms.
- Improved testing mode user experience.
- Allow the user to select the consent checkbox, even before filling in any information.
- Tapping anywhere on the screen dismisses the keyboard
- Now the user can scroll/bounce the card form when swiping vertically, because it's fun.
- If you don't set a banner image, we'll hide the top space reserved for it.

## 1.4.1
- Fix the Info.plist to include only one platform: `iPhoneOS`

## 1.4.0
- Add support for Swift 4.2
- Added the Sweden country option
- Now you can customize the final consent text with the following API:

    `Fidel.companyName = "Your Company Name Inc."` (Maximum 60 characters)
    
    `Fidel.privacyURL = "https://yourcompany.com/privacyURL"` (must be a valid URL)
    
    `Fidel.deleteInstructions = "Your delete instructions"` (Maximum 60 characters)
    
- If the data above is not valid, the UI will not be displayed and you will get an error.
- Set a default country the SDK should use with `Fidel.country = .unitedKingdom`. When you set a default country, the card linking screen will not show the country picker UI.
- Add support for more test cards. Anything with the following format:

    Visa: _4444000000004***_
    
    Mastercard: _5555000000005***_

## 1.3.7
- Added the Canada country option

## 1.3.6
- Add support for American Express test cards

## 1.3.5
- Hidden the PayPal logo in the card scanning UI.
- Notifying in the `onCardLinkFailedCallback` when the user cancels card linking. The `error.code` is `user-canceled`. The error message is `User canceled card linking.`
- Hidden the "select country" bar on all-screen iPhones.
- Added the Japan country option.
- Disabled CardIO manual card details entry forms.
- Improved testing mode user experience.
- Allow the user to select the consent checkbox, even before filling in any information.
- Tapping anywhere on the screen dismisses the keyboard
- Now the user can scroll/bounce the card form when swiping vertically, because it's fun.
- If you don't set a banner image, we'll hide the top space reserved for it.

## 1.3.4
- Fix the Info.plist to include only one platform: `iPhoneOS`

## 1.3.3
- Supported in Swift 4.1 projects
- Added the Sweden country option
- Now you can customize the final consent text with the following API:

    `Fidel.companyName = "Your Company Name Inc."` (Maximum 60 characters)
    
    `Fidel.privacyURL = "https://yourcompany.com/privacyURL"` (must be a valid URL)
    
    `Fidel.deleteInstructions = "Your delete instructions"` (Maximum 60 characters)
    
- If the data above is not valid, the UI will not be displayed and you will get an error.
- Set a default country the SDK should use with `Fidel.country = .unitedKingdom`. When you set a default country, the card linking screen will not show the country picker UI.
- Add support for more test cards. Anything with the following format:

    Visa: _4444000000004***_
    
    Mastercard: _5555000000005***_

## 1.3.2
- Compiled the SDK with bitcode enabled

## 1.3.1
- Removed the CardIO Pod from podspec dependencies of the Fidel SDK.

## 1.3.0
Compiled with Swift 4.1.2.
- Added USA country option.
- Made the SDK available for Objective-C projects.
- Made the Pod available for the public, through the Cocoapods trunk.
- Made it easier to setup and use the Pod.
- Made the CardIO Pod an external dependency of the Fidel SDK.

## 1.2.8
- Added the Canada country option

## 1.2.7
- Add support for American Express test cards

## 1.2.6
- Hidden the PayPal logo in the card scanning UI.
- Notifying in the `onCardLinkFailedCallback` when the user cancels card linking. The `error.code` is `user-canceled`. The error message is `User canceled card linking.`
- Hidden the "select country" bar on all-screen iPhones.
- Added the Japan country option.
- Disabled CardIO manual card details entry forms.
- Improved testing mode user experience.
- Allow the user to select the consent checkbox, even before filling in any information.
- Tapping anywhere on the screen dismisses the keyboard
- Now the user can scroll/bounce the card form when swiping vertically, because it's fun.
- If you don't set a banner image, we'll hide the top space reserved for it.

## 1.2.5
- Fix the Info.plist to include only one platform: `iPhoneOS`

## 1.2.4
- Supported in Swift 4.0 projects
- Added the Sweden country option
- Now you can customize the final consent text with the following API:

    `Fidel.companyName = "Your Company Name Inc."` (Maximum 60 characters)
    
    `Fidel.privacyURL = "https://yourcompany.com/privacyURL"` (must be a valid URL)
    
    `Fidel.deleteInstructions = "Your delete instructions"` (Maximum 60 characters)
    
- If the data above is not valid, the UI will not be displayed and you will get an error.
- Set a default country the SDK should use with `Fidel.country = .unitedKingdom`. When you set a default country, the card linking screen will not show the country picker UI.
- Add support for more test cards. Anything with the following format:

    Visa: _4444000000004***_
    
    Mastercard: _5555000000005***_

## 1.2.3
- Compiled the SDK with bitcode enabled

## 1.2.2
- Removed the CardIO Pod from podspec dependencies of the Fidel SDK.

## 1.2.1
Compiled with Swift 4.0.2.
- Added USA country option.
- Made the SDK available for Objective-C projects.
- Made the Pod available for the public, through the Cocoapods trunk.
- Made it easier to setup and use the Pod.
- Made the CardIO Pod an external dependency of the Fidel SDK.

## 1.2.0
Migrated to Swift 4.0.

## 1.1.8
- Added the Canada country option

## 1.1.7
- Add support for American Express test cards

## 1.1.6
- Hidden the PayPal logo in the card scanning UI.
- Notifying in the `onCardLinkFailedCallback` when the user cancels card linking. The `error.code` is `user-canceled`. The error message is `User canceled card linking.`
- Hidden the "select country" bar on all-screen iPhones.
- Added the Japan country option.
- Disabled CardIO manual card details entry forms.
- Improved testing mode user experience.
- Allow the user to select the consent checkbox, even before filling in any information.
- Tapping anywhere on the screen dismisses the keyboard
- Now the user can scroll/bounce the card form when swiping vertically, because it's fun.
- If you don't set a banner image, we'll hide the top space reserved for it.

## 1.1.5
- Fix the Info.plist to include only one platform: `iPhoneOS`

## 1.1.4
- Supported in Swift 3.0 projects
- Added the Sweden country option
- Now you can customize the final consent text with the following API:

    `Fidel.companyName = "Your Company Name Inc."` (Maximum 60 characters)
    
    `Fidel.privacyURL = "https://yourcompany.com/privacyURL"` (must be a valid URL)
    
    `Fidel.deleteInstructions = "Your delete instructions"` (Maximum 60 characters)
    
- If the data above is not valid, the UI will not be displayed and you will get an error.
- Set a default country the SDK should use with `Fidel.country = .unitedKingdom`. When you set a default country, the card linking screen will not show the country picker UI.
- Add support for more test cards. Anything with the following format:

    Visa: _4444000000004***_
    
    Mastercard: _5555000000005***_

## 1.1.3
- Compiled the SDK with bitcode enabled

## 1.1.2
- Removed the CardIO Pod from podspec dependencies of the Fidel SDK.

## 1.1.1
Compiled with Swift 3.0.
- Added USA country option.
- Made the SDK available for Objective-C projects.
- Made the Pod available for the public, through the Cocoapods trunk.
- Made it easier to setup and use the Pod.
- Made the CardIO Pod an external dependency of the Fidel SDK.

## 1.1.0
Migrated to Swift 3.2.

## 1.0.4

Features:

- Added option to use SDK in test environment using test card numbers

Improvements:

- Replaced UI assets
- Refactored comments
- Updated README.md
- Included CHANGELOG.md

## 1.0.3

Bugfixes:

- Fixed new callback name tests

## 1.0.2

Improvements:

- Replaced cardId and error callbacks with LinkResult and LinkError

## 1.0.1

Improvements:

- Updated Example app

Bugfixes:

- Fixed card.io camera nil image

## 1.0.0

Features:

- Added camera card scanning
- Added API link card endpoints
- Banner image customisation
- Added country code picker
- API tests
