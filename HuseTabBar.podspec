#
#  Be sure to run `pod spec lint HuseTabBar.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
# 以新开一个Terminal窗口，cd到~/.cocoapods目录，用du -sh *来查看下载进度。
# tips:
# https://cloud.tencent.com/developer/article/1647742
# https://blog.csdn.net/BUG_delete/article/details/104780608

# --------------------------------------------------------------------------------
#  🎉  Congrats

#  🚀  HuseTabBar (0.0.1) successfully published
#  📅  March 9th, 03:10
#  🌎  https://cocoapods.org/pods/HuseTabBar
#  👍  Tell your friends!
# --------------------------------------------------------------------------------

#本地验证
# pod lib lint --allow-warnings

#设置tag并上传
#git tag xxxx
#git push --tags

#远程验证
#pod spec lint --allow-warnings

#验证通过后进行发布
#pod trunk push HuseTabBar.podspec

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "HuseTabBar"
  spec.version      = "0.0.2"
  spec.summary      = "HuseTabBar."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = <<-DESC
    一款简单实用的自定义的TabBar.
                   DESC

  spec.homepage     = "https://github.com/baitxaps/HuseTabBar"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  #https://github.com/baitxaps/HuseTabBar

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  spec.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  spec.author             = { "baitxaps" => "baitxaps@126.com" }
  # Or just: spec.author    = "rhc"
  # spec.authors            = { "rhc" => "chenhairong@itouchtv.cn" }
  # spec.social_media_url   = "https://twitter.com/rhc"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # spec.platform     = :ios
  spec.platform     = :ios, "10.0"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  spec.source       = { :git => "https://github.com/baitxaps/HuseTabBar.git", :tag => "#{spec.version}" }
  

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  #spec.source_files  =  "HuseTabBar/*.{h,m}"
  #spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  #spec.exclude_files = "Classes/Exclude"
  # spec.public_header_files = "Classes/**/*.h"

  #*当前目录的所有文件
  #** 递归匹配
  #abc/**/*.{h,m} abc目录以及子目录，所有以.h和.m结尾的文件
  #{} 匹配任意一个
  #abc/**/*.h abc目录以及子目录，所有以.h结尾的文件

  # 文件层级分类
  spec.source_files = 'HuseTabBar/Classes/**/*'
  # 要是文件有分层 就这样写
  spec.subspec 'ZXLoadingView' do |ss|
    ss.source_files = 'HuseTabBar/Classes/ZXLoadingView/*.{h,m}'
  end

  spec.subspec 'ZXUIView' do |ss|
    ss.source_files = 'HuseTabBar/Classes/ZXUIView/*.{h,m}'
  end

  
  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #


  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"
  spec.ios.frameworks = 'Foundation', 'UIKit'

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

   spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

  # 资源 -------hint---------
  #  s.resource_bundles = {
  #   'HuseTabBar' => ['HuseTabBar/Assets/*.{png,json,xcassets}']
  #  }
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # 依赖库
  # s.dependency 'AFNetworking'
  # s.dependency 'JSONModel'
  # s.dependency 'lottie-ios','2.5.3' # 指定版本
  # s.dependency 'ZXTest2OCUIKit'
  #-------hint---------
end
