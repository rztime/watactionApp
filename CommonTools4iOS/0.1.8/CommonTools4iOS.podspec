Pod::Spec.new do |s|

  s.name         = "CommonTools4iOS"
  s.version      = "0.1.8"
  s.summary      = "常用工具"

  s.description  = <<-DESC
                  社区工具    
                   DESC

  s.homepage     = "https://github.com/witactionAppTeam/witactionApp.git"

  s.license      = "LICENSE"


  s.author             = { "rztime" => "rztime@vip.qq.com" }
 
  s.platform     = :ios, "8.0"


  s.source       = { :svn => "svn://huangkun@svn.witaction.com/EntranceGuard/branches/zxdoor_platform/trunk/APP/Modules4iOS/trunk/CommonTools4iOS" } #  :tag => "#{s.version}"


  s.source_files  = "Core", "CommonTools4iOS/Core/*.{h}"
  s.resources = "CommonTools4iOS/Core/Resource/*"

  s.static_framework = true  # 静态库 swift用的时候，pod报错

  s.subspec 'Category' do |ss|
    ss.source_files = 'CommonTools4iOS/Core/Category/*.{h,m}'
    ss.dependency 'Masonry'
    ss.dependency 'MJExtension'
  end

  s.subspec 'Common' do |ss|
    ss.subspec 'AES' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Common/AES/*.{h,m}'
    end
  end

  s.subspec 'DefaultConfigure' do |ss|
    ss.source_files = 'CommonTools4iOS/Core/DefaultConfigure/*.{h}'

    ss.dependency 'CommonTools4iOS/Category'
  end

  s.subspec 'Tools' do |ss|

    ss.subspec 'RZTakePhoto' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZTakePhoto/*.{h,m}'

      sss.subspec 'View' do |ssss|
        ssss.source_files =  'CommonTools4iOS/Core/Tools/RZTakePhoto/View/*.{h,m}'
      end
      sss.dependency 'CommonTools4iOS/DefaultConfigure'
      sss.dependency 'BlocksKit'
      sss.dependency 'Masonry'
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

      sss.dependency 'CommonTools4iOS/DefaultConfigure'
      sss.dependency 'Masonry'
	    sss.dependency 'CommonTools4iOS/View'
	    sss.dependency 'BlocksKit'
	    sss.dependency 'CommonTools4iOS/Category' 
    end

    ss.subspec 'RZCarNoInputManage' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZCarNoInputManage/RZCarPlateNumberKeyBorder/Controller/*.{h,m}'
      sss.subspec 'code' do |ssss|
        ssss.source_files = 'CommonTools4iOS/Core/Tools/RZCarNoInputManage/RZCarPlateNumberKeyBorder/VIewModel/*.{h,m}','CommonTools4iOS/Core/Tools/RZCarNoInputManage/RZCarPlateNumberKeyBorder/Model/*.{h,m}', 'CommonTools4iOS/Core/Tools/RZCarNoInputManage/RZCarPlateNumberKeyBorder/View/*.{h,m}'
      end
      sss.resources = 'CommonTools4iOS/Core/Tools/RZCarNoInputManage/RZCarPlateNumberKeyBorder/Resource/*'


      sss.dependency 'CommonTools4iOS/View'
      sss.dependency 'CommonTools4iOS/DefaultConfigure'
      sss.dependency 'RZColorful' 
    end

    ss.subspec 'TQAlert' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/TQAlert/*.{h,m}'
    end

    ss.subspec 'RZImageTools' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZImageTools/*.{h,m}'
      sss.resources = 'CommonTools4iOS/Core/Tools/RZImageTools/*.{bundle}'

      sss.dependency 'TZImagePickerController' #相册选择工具
      sss.dependency 'IDMPhotoBrowser'
	    sss.dependency 'CommonTools4iOS/Category' 
	    sss.dependency 'BlocksKit' 
    end
 
    ss.subspec 'RZKeyBoard' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZKeyBoard/*.{h,m}'
      sss.dependency 'CommonTools4iOS/Category'  
	    sss.dependency 'BlocksKit'  
    end

    ss.subspec 'RZDateManager' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZDateManager/*.{h,m}'

	    sss.dependency 'PGDatePicker' # 时间选择器
	    sss.dependency 'CommonTools4iOS/Category' 
	    sss.dependency 'CommonTools4iOS/DefaultConfigure' 
    end

    ss.subspec 'RZQRCodeManage' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZQRCodeManage/**/*.{h,m}'


  	  # 二维码功能
 	    sss.dependency 'LBXScan/LBXNative'
 	    sss.dependency 'LBXScan/UI'
 	    sss.dependency 'CommonTools4iOS/DefaultConfigure' 
 	    sss.dependency 'CommonTools4iOS/Category' 

sss.prefix_header_contents = <<-EOS
#ifdef __OBJC__
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#define LBXScan_Define_Native  //下载了native模块
#define LBXScan_Define_UI     //下载了界面模块

#endif
EOS

    end

    ss.subspec 'AppVersionManager' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/AppVersionManager/*.{h,m}'
      sss.resources = 'CommonTools4iOS/Core/Tools/AppVersionManager/AppVersion.bundle'
     
      sss.dependency 'CommonTools4iOS/Category' 
    end

    ss.subspec 'RZHud' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZHud/*.{h,m}'
      sss.resources = 'CommonTools4iOS/Core/Tools/RZHud/RZHud.bundle'

      sss.dependency 'MBProgressHUD'
    end

    ss.subspec 'RZFileManager' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZFileManager/**/*.{h,m}'
      sss.resources = 'CommonTools4iOS/Core/Tools/RZFileManager/RZFileImage/RZFileImage.bundle'

      sss.dependency 'CommonTools4iOS/View'
      sss.dependency 'CommonTools4iOS/DefaultConfigure'
    end


    ss.subspec 'RZCommonTools' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZCommonTools/**/*.{h,m}'

      sss.dependency 'CommonTools4iOS/DefaultConfigure'
    end

    ss.subspec 'ControllerManager' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/ControllerManager/*.{h,m}'

      sss.dependency 'BlocksKit'
  	  sss.dependency 'RTRootNavigationController'
  	  sss.dependency 'CommonTools4iOS/Category'
    end

    ss.subspec 'RZTopTipsView' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZTopTipsView/*.{h,m}'
      sss.resources = 'CommonTools4iOS/Core/Tools/RZTopTipsView/RZActionSheetResources.bundle'

      sss.dependency 'CommonTools4iOS/DefaultConfigure'
    end

    ss.subspec 'RZActionSheetViewController' do |sss|
      sss.source_files = 'CommonTools4iOS/Core/Tools/RZActionSheetViewController/*.{h,m}'

      sss.dependency 'Masonry' 
      sss.dependency 'CommonTools4iOS/DefaultConfigure'
      sss.dependency 'BlocksKit' 
    end
  end

  s.subspec 'View' do |ss|
    ss.source_files = 'CommonTools4iOS/Core/View/*.{h,m}'
    ss.resources = 'CommonTools4iOS/Core/View/*.{bundle}'

    ss.dependency 'CommonTools4iOS/DefaultConfigure'
    ss.dependency 'Masonry' 
    ss.dependency 'BlocksKit' 
    ss.dependency 'CommonTools4iOS/Category'
    ss.dependency 'RZColorful' 
  end
 
end
