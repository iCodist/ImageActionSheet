#
# Be sure to run `pod lib lint ImageActionSheet.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ImageActionSheet'
  s.version          = '1.0.1'
  s.summary          = 'iOS Native style action sheet with the option of showing icons.'

  s.description      = 'iOS Native style action sheet with the option of showing icons. It is a complete implementation and does not use any private api of UIKit.'

  s.homepage         = 'https://github.com/bismasaeed00/ImageActionSheet'
  s.screenshots     = 'https://user-images.githubusercontent.com/16186934/83187499-87f88480-a12e-11ea-8a12-19e08cebb4dc.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Bisma Saeed' => 'bismasaeed00@gmail.com' }
  s.source           = { :git => 'https://github.com/bismasaeed00/ImageActionSheet.git', :branch => "master", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/bismasaeed00'

  s.ios.deployment_target = '13.0'
  s.platform        = :ios, '13.0'
  s.requires_arc    = true
  s.static_framework = true

  s.source_files = 'ImageActionSheet/Classes/**/*'
  s.swift_version   = '5.0'
  
  # Fix for known issue in swift compiler (see 47598583)
  s.xcconfig = { 'OTHER_LDFLAGS' => '-Wl,-force_load,${PODS_CONFIGURATION_BUILD_DIR}/ImageActionSheet/ImageActionSheet.framework/ImageActionSheet' }
  
end
