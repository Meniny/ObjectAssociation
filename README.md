
<p align="center">
  <!-- <img src="https://ooo.0o0.ooo/2017/08/02/5981c39c426e3.png" alt="ObjectAssociation"> -->
  <br/><a href="https://cocoapods.org/pods/ObjectAssociation">
  <img alt="Version" src="https://img.shields.io/badge/version-1.2.0-brightgreen.svg">
  <img alt="Author" src="https://img.shields.io/badge/author-Meniny-blue.svg">
  <img alt="Build Passing" src="https://img.shields.io/badge/build-passing-brightgreen.svg">
  <img alt="Swift" src="https://img.shields.io/badge/swift-4.0%2B-orange.svg">
  <br/>
  <img alt="Platforms" src="https://img.shields.io/badge/platform-iOS%20%7C%20tvOS%20%7C%20watchOS%20%7C%20macOS-lightgrey.svg">
  <img alt="MIT" src="https://img.shields.io/badge/license-MIT-blue.svg">
  <br/>
  <img alt="Cocoapods" src="https://img.shields.io/badge/cocoapods-compatible-brightgreen.svg">
  <img alt="Carthage" src="https://img.shields.io/badge/carthage-working%20on-red.svg">
  <img alt="SPM" src="https://img.shields.io/badge/swift%20package%20manager-working%20on-red.svg">
  </a>
</p>

## What's this?

`ObjectAssociation` is an object association helper for Swift extensions.

## Requirements

* iOS 8.0+
* tvOS 9.0+
* watchOS 2.0+
* macOS 10.10+
* Xcode 8 with Swift 3

## Installation

#### CocoaPods

```ruby
use_frameworks!
pod 'ObjectAssociation'
```

## Contribution

You are welcome to fork and submit pull requests.

## License

`ObjectAssociation` is open-sourced software, licensed under the `MIT` license.

## Sample

```swift
import ObjectAssociation

extension NSObject {

  private static let association = ObjectAssociation<String>()

  public var uniqueIdentifier: String? {
    get {
      return NSObject.association[self]
    }
    set {
      NSObject.association[self] = newValue
    }
  }
}
```
