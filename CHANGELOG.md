# Fidel iOS SDK Change log

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
