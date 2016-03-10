#
# Be sure to run `pod lib lint PLCameraStreamingKit.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "PLCameraStreamingKit"
  s.version          = "1.6.2"
  s.summary          = "Pili iOS camera streaming framework via RTMP."
  s.homepage         = "https://github.com/pili-engineering/PLCameraStreamingKit"
  s.license          = 'Apache License, Version 2.0'
  s.author           = { "0dayZh" => "0day.zh@gmail.com" }
  s.source           = { :git => "https://github.com/pili-engineering/PLCameraStreamingKit.git", :tag => "v#{s.version}", :submodules => true }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.public_header_files = 'Pod/Classes/*.h'
  s.source_files = 'Pod/Classes/*.h', 'Pod/Classes/*.m'

  #s.dependency 'PLStreamingKit', '~> 1.1.5'
  s.frameworks = ['UIKit', 'AVFoundation', 'CoreGraphics', 'CFNetwork', 'AudioToolbox', 'CoreMedia', 'VideoToolbox']
  s.libraries = 'z', 'c++'

  s.default_subspec = 'Swift'

  s.subspec 'Swift' do |swift|
    swift.public_header_files = 'Libs/PLStreamingKit/Pod/Library/include/**/*.h'
    swift.preserve_paths      = 'Libs/PLStreamingKit/Pod/Library/include/**/*.h', 'Libs/PLStreamingKit/Pod/Library/lib/*.a'
    swift.vendored_libraries  = 'Libs/PLStreamingKit/Pod/Library/lib/*.a'
    swift.ios.deployment_target = '8.0'
  end

end
