# FIDEL iOS SDK

This SDK helps you to add card linking technology to your iOS apps in minutes. It captures credit/debit card numbers securely and links them to your programs.
In addition to the SDK we've included an example app to show you how to use the SDK in real scenarios.

### Installation

We recommend using [CocoaPods][642d6fa5] to integrate the FIDEL SDK with your project.

  [642d6fa5]: https://cocoapods.org/ "CocoaPods"

Add this [pre_install](https://guides.cocoapods.org/syntax/podfile.html#pre_install) hook to your Podfile:

```ruby
pre_install do |installer|
  def installer.verify_no_static_framework_transitive_dependencies; end
end
```
Add the Fidel pod itself:

```ruby
pod 'Fidel', :git => 'https://github.com/FidelLimited/ios-sdk', :tag => '1.0.6'
```

### Usage

Set your public SDK Key (pk_test or pk_live) and the **programId** you want to link cards to:

```swift
Fidel.apiKey = "pk_test_7ty6i7..."
Fidel.programId = "3a7a169a-..."
```

You can pass additional data:

```swift
Fidel.metaData = ["id": "this-is-the-metadata-id", "customKey1": "customValue1", "customKey2": "customValue2"]
```

To start card scanning automatically:

```swift
Fidel.autoScan = true
```

To customise the view with a custom banner:

```swift
Fidel.bannerImage = UIImage(named: "some_image_asset.png")
```

Then, present the Fidel view controller:

```swift
Fidel.present(presentingViewControllerInstance)
```

Optionally, you can pass callbacks to be notified if the card was linked:

```swift
Fidel.present(self, onCardLinkedCallback: { (card: LinkResult) in
  print(card.id)
}, onCardLinkFailedCallback: { (err: LinkError) in
  print(err.message)
})
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

The FIDEL iOS SDK is in active development, we welcome your feedback!

Get in touch:

GitHub Issues - For SDK issues and feedback
FIDEL Developers Slack Channel - [https://fidel-developers-slack-invites.herokuapp.com](https://fidel-developers-slack-invites.herokuapp.com) - for personal support at any phase of integration

### License

The FIDEL iOS SDK is open source and available under the MIT license. See the LICENSE file for more info.
