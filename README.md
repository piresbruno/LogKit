
LogKit is just another Swift logging framework.  
It was made be to simple to use, read and maintain.  
It works with Xcode 10.2 and Swift 5  
Compatible with iOS 7.1+ and with Carthage (iOS 8.0+)  

#### iOS 7.1 support
Given iOS 7 limitations with frameworks, to use LogKit in your iOS 7.1 project, just drag & drop the LogKit source files into your project.


### Configuration 

On AppDelegate setup the log level, on the *didFinishLaunchingWithOptions* function

```swift
// change the log level to the most convenient one for you
LogKit.setup(level:.Verbose)
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
LogKit.log(level:.Info, message: "User signup success")
```



##### Disclaimer
This framework was inspired in the work of other logging frameworks, but not a copy of any of them.


![Build](https://www.bitrise.io/app/93bb51c1de5dd228.svg?token=QzEV4V8xkznqBPDKyChWLA&branch=swift3)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) 
![Swift version](https://img.shields.io/badge/Swift%20-3.x-orange.svg) 
![platforms](https://img.shields.io/badge/platforms-iOS-lightgrey.svg)  

