#
# Be sure to run `pod lib lint EBTools.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EBTools'
  s.version          = '0.1.0'
  s.summary          = 'Library with helper methods that help day to day programming IOS APPS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Library with helper methods that help day to day programming IOS APPS
  A lot of extensions of UIView, UIButton, UILabel, helper methods, for Example a method to create a UIColor from RGB,
  The main purpose is to help developers that write UIViews only by code
                       DESC

  s.homepage         = 'https://github.com/ezequielbrrt/EBTools'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ezequiel Barreto' => 'ezequielbrrt@gmail.com' }
  s.source           = { :git => 'https://github.com/ezequielbrrt/EBTools.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.swift_versions = '5.0'
  s.source_files = 'Source/**/*'
  
  # s.resource_bundles = {
  #   'EBTools' => ['EBTools/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
