# DesignableButton

[![CI Status](http://img.shields.io/travis/Diego Cruz/DesignableButton.svg?style=flat)](https://travis-ci.org/Diego Cruz/DesignableButton)
[![Version](https://img.shields.io/cocoapods/v/DesignableButton.svg?style=flat)](http://cocoapods.org/pods/DesignableButton)
[![License](https://img.shields.io/cocoapods/l/DesignableButton.svg?style=flat)](http://cocoapods.org/pods/DesignableButton)
[![Platform](https://img.shields.io/cocoapods/p/DesignableButton.svg?style=flat)](http://cocoapods.org/pods/DesignableButton)

![](https://raw.githubusercontent.com/cruzdiego/DesignableButton/master/Pod/Assets/Intro.gif)

##Features

- Designable on Storyboard
- Touch Up Inside event can be directly linked to an IBAction. No need for subclassing, implementing UITapGestureRecognizer events or overriding touchesEnded method.
- Flexible highlight behavior. Select which subviews you want to highlight at tap, no code needed.

## Basic Usage

Drag an UIView to your Storyboard scene and change asign DesignableButton as its custom class

![](https://raw.githubusercontent.com/cruzdiego/DesignableButton/master/Pod/Assets/CustomClass.png)

From there, you can insert subviews to it and asign IBActions to its events (being Touch Up Inside the most used).

## Customizing it

Thanks to IBInspectables, you can customize the following properties right on Storyboard:

![](https://raw.githubusercontent.com/cruzdiego/DesignableButton/master/Pod/Assets/IBInspectables.png)

```swift
@IBInspectable var highlight:Bool = true
```

Determine if DesignableButton can be highlighted or not at tap. Default value is true.

```swift
@IBInspectable var highlightAlpha:CGFloat = 0.5
```

Alpha value applied to selected subviews (or entire DesignableButton if none is selected) on highlighted state. Default value is 0.5

```swift
@IBOutlet public var highlightableViews: [UIView]?
```

Collection of subviews selected to be highlighted at tap. If empty or nil (and highlight is true) entire DesignableButton is highlighted.

You can append subviews to this array either programatically or using Storyboard:

![](https://raw.githubusercontent.com/cruzdiego/DesignableButton/master/Pod/Assets/IBOutlets.png)

## Requirements

1. iOS 8
2. Xcode version supporting Swift 2.1 syntax (7.1 or later)

## Installation

Using [CocoaPods](http://cocoapods.org/):

```ruby
pod "DesignableButton"
```

Or manually:

1. Copy DesignableButton.swift to your project's bundle.

## Author

Diego Cruz, diego.cruz@icloud.com

## License

DesignableButton is available under the MIT license. See the LICENSE file for more info.
