#
# Be sure to run `pod lib lint NetworkReachabilityManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CAINetworkReachabilityManager'
  s.version          = '0.1.1'
  s.summary          = '基于AFNetworkReachabilityManager二次封装的一个方法回调是否有网络，用于某些特定场景需要交互检查使用'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
基于AFNetworkReachabilityManager封装的一个方法回调是否有网络，用于某些特定场景需要交互检查使用。
                       DESC

  s.homepage         = 'https://github.com/zj1208/CAINetworkReachabilityManager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '海参' => '879654715@qq.com' }
  s.source           = { :git => 'https://github.com/zj1208/CAINetworkReachabilityManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'CAINetworkReachabilityManager/Classes/**/*'
  
  # s.resource_bundles = {
  #   'NetworkReachabilityManager' => ['NetworkReachabilityManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking/Reachability'
end
