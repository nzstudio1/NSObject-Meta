#
# Be sure to run `pod lib lint NSObject-Meta.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NSObject-Meta'
  s.version          = '0.1.0'
  s.summary          = 'A convenient way to assign objects to another instance of NSObject.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Using objc_getAssociatedObject and objc_setAssociatedObject is sometimes troublesome. NSObject+Meta brings in the ease of assigning meta objects to another instance of NSObject. Meta objects are retained, if you want to assign weakly use weakMeta.
  For retained objects it uses a NSMutableDictionary and for the weak objects it uses NSMapTable with weak value containers.
                       DESC

  s.homepage         = 'https://github.com/nzstudio1/NSObject-Meta'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Hamidreza Vakilian' => 'hamid@nzstudio.dev' }
  s.source           = { :git => 'https://github.com/nzstudio1/NSObject-Meta.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'NSObject-Meta/NSObject-Meta/Classes/**/*'
  
  # s.resource_bundles = {
  #   'NSObject-Meta' => ['NSObject-Meta/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
