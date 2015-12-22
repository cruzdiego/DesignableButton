#
# Be sure to run `pod lib lint DesignableButton.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "DesignableButton"
  s.version          = "1.0.0"
  s.summary          = "Design it on Storyboard. A fully customizable button without the hassle."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                       Created with prototypers and designers in mind, DesignableButton lets you design a button with a full custom layout and elements inside of it. Don't worry about implementing UITapGestureRecognizers, overriding touchesEnded or another hack used for making a custom view tapable. 

                       In adition, DesignableButton supports a customizable highlight behavior. Just tell it which subviews you want to highlight at tap.
                       DESC

  s.homepage         = "https://github.com/cruzdiego/DesignableButton"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Diego Cruz" => "diego.cruz@icloud.com" }
  s.source           = { :git => "https://github.com/cruzdiego/DesignableButton.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'DesignableButton' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
