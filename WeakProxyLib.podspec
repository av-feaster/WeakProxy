#
#  Be sure to run `pod spec lint WeakProxyLib.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name             = 'WeakProxyLib'
  s.version          = '0.1.2'
  s.summary          = 'A library to provide a weak proxy object to avoid retain cycles.'
  s.description      = <<-DESC
  WeakProxyLib provides a weak proxy object that helps to avoid retain cycles in your iOS applications.
  DESC

  s.homepage         = 'https://github.com/av-feaster'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'av-feaster' => 'a4amanver15@gmail.com' }
  s.source           = { :git => 'https://github.com/av-feaster/WeakProxy.git', :tag => s.version.to_s }
  s.ios.deployment_target = '12.0'
  s.source_files     = 'WeakProxyLib/**/*.{h,m,swift}'
  s.swift_versions   = ['5.0'] 
end
