# DeviceIDFetcher

[![CI Status](https://img.shields.io/travis/sameh0/DeviceIDFetcher.svg?style=flat)](https://travis-ci.org/sameh0/DeviceIDFetcher)
[![Version](https://img.shields.io/cocoapods/v/DeviceIDFetcher.svg?style=flat)](https://cocoapods.org/pods/DeviceIDFetcher)
[![License](https://img.shields.io/cocoapods/l/DeviceIDFetcher.svg?style=flat)](https://cocoapods.org/pods/DeviceIDFetcher)
[![Platform](https://img.shields.io/cocoapods/p/DeviceIDFetcher.svg?style=flat)](https://cocoapods.org/pods/DeviceIDFetcher)

## Example
To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

DeviceIDFetcher is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DeviceIDFetcher' , :git => 'https://github.com/sameh0/DeviceID-Fetcher.git' , :branch => 'main'
```
## Swift Package Manager
dependencies: [
    .package(url: "https://github.com/sameh0/DeviceID-Fetcher.git")
]

## Usage
The library can be used to get a unique identifier for the iOS device it's running on .
The are 3 main methods to acheive that 

Integrating the Framework inside the application is easy 
initalize an instance of the framework , pass in the DeviceIDFetching method and call getDeviceId to get it  
```swift
        DeviceIdFetcher(method: .device).getDeviceId() 
```

1 - Advertiser ID : 
Pros: The most common way, is by adding the "Privacy - Tracking" flag to your info.plist 
Allows you to track the user across different apps (if permission is granted of course) 
Same ID Across all apps

Cons: Requires the user to accept "Tracking" Setting it up to require an additional call to
    ```ATTrackingManager.requestTrackingAuthorization```
to request permission to use it.

2 - KeyChain: 
Pros: 
Easy to setup Allows you to save the identifier even if your app got uninstalled
Cons: 
Deletable by the user at any time Can't be shared with other apps (unless you have they using the same Keychain group) 
Different ID for each app

3 - Vendor ID: 
Pros: No Permissions, no extra work
Cons: Changes with every reinstallation of the app Not shared across apps


## integration as a dependecy 
Both Cocoapods and Swift Package manage could be used for this . no extra setup required .

## Author

sameh0, samehsayed0@hotmail.com

## License

DeviceIDFetcher is available under the MIT license. See the LICENSE file for more info.


Usage
The library can be used to get a unique identifier for the iOS device it's running on. There are 3 main methods to achieve that
Integrating the Framework inside the application is easy to initialize an instance of the framework, pass in the DeviceIDFetching method, and call getDeviceId to get it
        DeviceIdFetcher(method: .device).getDeviceId() 

