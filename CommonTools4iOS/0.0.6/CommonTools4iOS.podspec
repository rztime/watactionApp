#
#  Be sure to run `pod spec lint CommonTools4iOS.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "CommonTools4iOS"
  s.version      = "0.0.6"
  s.summary      = "常用工具"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
                  社区工具
                   DESC

  s.homepage     = "https://github.com/witactionAppTeam/witactionApp.git"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "LICENSE"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "rztime" => "rztime@vip.qq.com" }
  # Or just: s.author    = "rztime"
  # s.authors            = { "rztime" => "rztime@vip.qq.com" }
  # s.social_media_url   = "http://twitter.com/rztime"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  s.platform     = :ios, "8.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :svn => "svn://huangkun@svn.witaction.com/EntranceGuard/branches/zxdoor_platform/trunk/APP/Modules4iOS/trunk/CommonTools4iOS" } #  :tag => "#{s.version}"


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "Core", "CommonTools4iOS/Core/*.{h}"
  s.resources = "CommonTools4iOS/Core/Resource/*"

  s.subspec 'Category' do |ss|
    ss.source_files = 'CommonTools4iOS/Core/Category/*.{h,m}'
  end

  s.subspec 'Common' do |ss|
    ss.subspec 'AES' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Common/AES/*.{h,m}'
    end
  end

  s.subspec 'DefaultConfigure' do |ss|
    ss.source_files = 'CommonTools4iOS/Core/DefaultConfigure/*.{h}'
  end

  s.subspec 'Tools' do |ss|

    ss.subspec 'RZTakePhoto' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZTakePhoto/*.{h,m}'

      sss.subspec 'View' do |ssss|
        ssss.source_files =  'CommonTools4iOS/Core/Tools/RZTakePhoto/View/*.{h,m}'
      end
    end

    ss.subspec 'RZDeviceOrientationManager' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZDeviceOrientationManager/*.{h,m}'
    end

    ss.subspec 'RZRootManager' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZRootManager/*.{h,m}'

      sss.subspec 'ViewController' do |ssss|
        ssss.source_files =  'CommonTools4iOS/Core/Tools/RZRootManager/ViewController/**/*.{h,m}'
      end

      sss.resources =  'CommonTools4iOS/Core/Tools/RZRootManager/Resource/*'
    end

    ss.subspec 'RZCarNoInputManage' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZCarNoInputManage/RZCarPlateNumberKeyBorder/Controller/*.{h,m}'
      sss.subspec 'code' do |ssss|
        ssss.source_files = 'CommonTools4iOS/Core/Tools/RZCarNoInputManage/RZCarPlateNumberKeyBorder/VIewModel/*.{h,m}','CommonTools4iOS/Core/Tools/RZCarNoInputManage/RZCarPlateNumberKeyBorder/Model/*.{h,m}', 'CommonTools4iOS/Core/Tools/RZCarNoInputManage/RZCarPlateNumberKeyBorder/View/*.{h,m}'
      end
      sss.resources = 'CommonTools4iOS/Core/Tools/RZCarNoInputManage/RZCarPlateNumberKeyBorder/Resource/*'

    end

    ss.subspec 'TQAlert' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/TQAlert/*.{h,m}'
    end

    ss.subspec 'RZImageTools' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZImageTools/*.{h,m}'
      sss.resources = 'CommonTools4iOS/Core/Tools/RZImageTools/*.{bundle}'
    end
 
    ss.subspec 'RZKeyBoard' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZKeyBoard/*.{h,m}'
    end

    ss.subspec 'RZDateManager' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZDateManager/*.{h,m}'
    end

    ss.subspec 'RZQRCodeManage' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZQRCodeManage/**/*.{h,m}'
    end

    ss.subspec 'AppVersionManager' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/AppVersionManager/*.{h,m}'
      sss.resources = 'CommonTools4iOS/Core/Tools/AppVersionManager/AppVersion.bundle'
     
    end

    ss.subspec 'RZHud' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZHud/*.{h,m}'
      sss.resources = 'CommonTools4iOS/Core/Tools/RZHud/RZHud.bundle'
    end

    ss.subspec 'RZFileManager' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZFileManager/**/*.{h,m}'
      sss.resources = 'CommonTools4iOS/Core/Tools/RZFileManager/RZFileImage/RZFileImage.bundle'
    end


    ss.subspec 'RZCommonTools' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZCommonTools/**/*.{h,m}'
    end

    ss.subspec 'RZMapManage' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZMapManage/**/*.{h,m}'
    end

    ss.subspec 'ControllerManager' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/ControllerManager/*.{h,m}'
    end

    ss.subspec 'RZTopTipsView' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZTopTipsView/*.{h,m}'
      sss.resources = 'CommonTools4iOS/Core/Tools/RZTopTipsView/RZActionSheetResources.bundle'
    end

    ss.subspec 'RZActionSheetViewController' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZActionSheetViewController/*.{h,m}'
    end
  end

  s.subspec 'View' do |ss|
    ss.source_files = 'CommonTools4iOS/Core/View/*.{h,m}'
    ss.resources = 'CommonTools4iOS/Core/View/*.{bundle}'
  end
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

s.prefix_header_contents = <<-EOS
#ifdef __OBJC__
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#define LBXScan_Define_Native  //下载了native模块
#define LBXScan_Define_UI     //下载了界面模块

#endif
EOS
  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

  s.dependency 'RZColorful'    # 富文本使用的方法库
  s.dependency 'TZImagePickerController' #相册选择工具
  s.dependency 'PGDatePicker' # 时间选择器
  s.dependency 'AMapLocation'  # 高德地图定位SDK
  
  s.dependency 'MJExtension'
  s.dependency 'Masonry'
  
  s.dependency 'BlocksKit'
 
  s.dependency 'RTRootNavigationController'

  s.dependency 'MBProgressHUD'
  # 二维码功能
  s.dependency 'LBXScan/LBXNative'
  s.dependency 'LBXScan/UI'

  s.dependency 'IDMPhotoBrowser'
end
