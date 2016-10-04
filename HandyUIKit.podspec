#
# Be sure to run `pod lib lint HandyUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HandyUIKit'
  s.version          = '0.1.0'
  s.summary          = 'Helpful UIKit components.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Reusable UIKit components that are helpful & handy.'

  s.homepage         = 'https://bitbucket.org/dpostigo/handyuikit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dani Postigo' => 'dani.postigo@gmail.com' }
  s.source           = { :git => 'https://bitbucket.org/dpostigo/handyuikit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/alsoyay'

  s.ios.deployment_target = '9.0'

  s.source_files = 'HandyUIKit/**/*'
  
  # s.resource_bundles = {
  #   'HandyUIKit' => ['HandyUIKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'Handy'

end
