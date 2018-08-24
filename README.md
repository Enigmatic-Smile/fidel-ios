# FIDEL iOS SDK

Our SDK helps you add card linking technology to your iOS apps in minutes. It captures credit/debit card numbers securely and links them to your programs.

### Installation

We recommend using [CocoaPods][642d6fa5] to integrate Fidel SDK with your project.

[642d6fa5]: https://cocoapods.org/ "CocoaPods"

Add a `Podfile` (if you don't have one already), by running the following command: `pod init`.

##### Step 1
Add Fidel pod (for Swift 4.1.2):

```ruby
pod 'Fidel'
```

or if you're using Swift 4.0.2:

```ruby
pod 'Fidel', '~>1.2.3'
```

or in case you're on **Swift < 3.0**, use the `1.1.3` tag instead:

```ruby
pod 'Fidel', '~>1.1.3'
```

##### Step 2
In order to allow scanning cards with the camera, make sure to add the key `NSCameraUsageDescription` to your app's `Info.plist` and set the value to a string describing why your app needs to use the camera (e.g. "To scan credit cards."). This string will be displayed when the app initially requests permission to access the camera.

##### Step 3 (skip if you have a Swift project)
If you have an Objective-C project and did not add any Swift code yet, please set the `Always Embed Swift Standard Libraries` flag in Build Settings to `YES`. For more detailed information about this setting, please read this [Apple material](https://developer.apple.com/library/archive/qa/qa1881/_index.html).

##### Troubleshooting
In case Cocoapods doesn't find the Fidel specs or it finds older specs, try updating with `pod update`. After updating, run `pod install`.

### Usage

Import the SDK in your code:
##### Swift
```swift
import Fidel
```

##### Objective-C
```objectivec
#import <Fidel/Fidel-Swift.h>
```

Set your public SDK Key (`pk_test` or `pk_live`) and the `programId` you want to link cards to:

##### Swift
```swift
Fidel.apiKey = "pk_test_7ty6i7..."
Fidel.programId = "3a7a169a-..."
```

##### Objective-C
```objectivec
[FLFidel setApiKey:@"pk_test_7ty6i7..."];
[FLFidel setProgramId:@"3a7a169a-..."];
```

To start card scanning automatically:

##### Swift
```swift
Fidel.autoScan = true
```

##### Objective-C
```objectivec
[FLFidel setAutoScan:YES];
```

To customise the view with a custom banner:

##### Swift
```swift
Fidel.bannerImage = UIImage(named: "some_image_asset.png")
```

##### Objective-C
```objectivec
[FLFidel setBannerImage:[UIImage imageNamed:@"myImage"]];
```

Then, present the Fidel view controller:

##### Swift
```swift
Fidel.present(presentingViewControllerInstance)
```

##### Objective-C
```objectivec
[FLFidel present:self onCardLinkedCallback:nil onCardLinkFailedCallback:nil];
```

Optionally, you can pass callbacks to be notified if the card was linked:

##### Swift
```swift
Fidel.present(self, onCardLinkedCallback: { (card: LinkResult) in
	print(card.id)
}, onCardLinkFailedCallback: { (err: LinkError) in
	print(err.message)
})
```

##### Objective-C
```objectivec
[FLFidel present:self onCardLinkedCallback:^(FLLinkResult * _Nonnull result) {
    NSLog(@"%@", result);
} onCardLinkFailedCallback:^(FLLinkError * _Nonnull error) {
    NSLog(@"%@", error);
}];
```

### Documentation

In test environment use our VISA and Mastercard test card numbers:

```swift
var testCards = [
"5555000000005001",
"5555000000005002",
"5555000000005003",
"5555000000005004",
"5555000000005005",
"5555000000005006",
"5555000000005007",
"5555000000005008",
"5555000000005009",
"5555000000005010",
"4444000000004001",
"4444000000004002",
"4444000000004003",
"4444000000004004",
"4444000000004005",
"4444000000004006",
"4444000000004007",
"4444000000004008",
"4444000000004009",
"4444000000004010"
];
```

### Feedback

The Fidel iOS SDK is in active development, we welcome your feedback!

Get in touch:

GitHub Issues - For SDK issues
FIDEL Developers Slack Channel - [https://fidel-developers-slack-invites.herokuapp.com](https://fidel-developers-slack-invites.herokuapp.com) - for personal support and feedback at any phase of integration

### License

The FIDEL iOS SDK is open source and available under the MIT license. See the LICENSE file for more info.
