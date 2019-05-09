#
# Be sure to run `pod lib lint TestSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TestSDK'
  s.version          = '0.1.1'
  s.summary          = 'A short description of TestSDK.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/jiaguoshang/TestSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jiaguoshang' => 'jia12216@163.com' }
  s.source           = { :git => 'https://github.com/jiaguoshang/TestSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TestSDK/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TestSDK' => ['TestSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking', '~> 3.1.0'
  s.dependency 'ReactiveObjC'
  s.dependency 'YYModel'
  s.dependency 'YYCategories'
  s.dependency 'FMDB'
  s.dependency 'MJExtension'
  s.dependency 'SDAutoLayout'
  s.dependency 'SAMKeychain'
end
