#
#  Be sure to run `pod spec lint smartystreets-ios-sdk.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "SmartyStreets"
  spec.version      = "8.4.1"
  spec.summary      = "The official client libraries for accessing SmartyStreets APIs from iOS"
  spec.homepage     = "https://smartystreets.com/docs/sdk/ios"
  spec.license      = "Apache 2.0 License"
  spec.ios.deployment_target = "11.0"
  spec.author             = { "SmartyStreets" => "email@address.com" }
  spec.source       = { :git => "https://github.com/smartystreets/smartystreets-ios-sdk.git", :tag => "#{spec.version}" }
  spec.source_files  = "sdk/Sources/**/*"
  spec.exclude_files = "Classes/Exclude"
  spec.frameworks  = "Foundation"
  spec.swift_version = '5.0'

end
