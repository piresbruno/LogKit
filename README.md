
LogKit is just another Swift logging framework. <br/>
It was made be to simple to use, read and maintain.<br/>
It works with Xcode 7.3 and Swift 2.2.<br/>
Compatible with iOS 7.1+ and Cathage (iOS 8.0+)<br/>

#### iOS 7.1 support
Given iOS 7 limitations with frameworks, to use LogKit in your iOS 7.1+ project, just drag & drop LogKit.swift into your project.


### Configuration 

On AppDelegate setup the log level, on the *didFinishLaunchingWithOptions* function

```swift
// change the log level to the most convenient one for you
LogKit.setup(.Verbose)
```

You can choose any of the items in this enum, including Disabled, to configure your setup.

```swift
enum LogLevel: Int, Comparable {
    case Disabled   = 0
    case Error      = 1
    case Warning    = 2
    case Info       = 3
    case Debug      = 4
    case Verbose    = 5
}
```

Then, anywere in your code, just call

```swift
LogKit.log(.Info, message: "User signup success")
```



##### Disclaimer
This framework was inspired in the work of other logging frameworks, but not a copy of any of them.



[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![GitHub release](https://img.shields.io/github/release/qubyte/rubidium.svg)](https://github.com/piresbruno/LogKit/releases) ![Swift 2.2.x](https://img.shields.io/badge/Swift-2.2.x-orange.svg) ![platforms](https://img.shields.io/badge/platforms-iOS%20%7C%20OS%20X%20%7C%20watchOS%20%7C%20tvOS%20-lightgrey.svg)