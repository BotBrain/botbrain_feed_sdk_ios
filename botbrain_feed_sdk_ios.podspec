#
# Be sure to run `pod lib lint BotBrainFeed.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'botbrain_feed_sdk_ios'
  s.version          = '1.3.0'
  s.summary          = '布本智能图文SDK标准版'

  s.homepage         = 'https://github.com/BotBrain/botbrain_feed_sdk_ios'
  s.license = {
    :type => "Copyright",
    :text => "      Copyright (c) 2016 BotBrain. All rights reserved.\n"
  }
  s.author           = { 'BotBrain' => 'zhangzhan@firedata.cc' }
  s.source           = { :git => 'https://github.com/BotBrain/botbrain_feed_sdk_ios.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.subspec 'GDTLibrary' do |ss|
  ss.source_files = 'BotBrainFeed/Classes/GDTLibrary/*.h'
  ss.vendored_library = 'BotBrainFeed/Classes/GDTLibrary/libGDTMobSDK.a'
  end

  s.vendored_frameworks = 'BotBrainFeed/Classes/*.framework'
  s.resource = 'BotBrainFeed/Assets/*.bundle'

  s.dependency 'AFNetworking', '>= 3.0.0'
  s.dependency 'SDWebImage', '>= 3.7.0'
  s.dependency 'BotFireData', '>= 0.2.1'

  s.frameworks = 'WebKit'
  s.libraries = 'z'
  s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}

end
