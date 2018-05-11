Pod::Spec.new do |s|
  s.name             = "RxGoogleMaps"
  s.version          = "3.0.2"
  s.summary          = "RxSwift reactive wrapper for GoogleMaps SDK."
  s.homepage         = "https://github.com/pavelR/RxGoogleMaps"
  s.license          = 'MIT'
  s.author           = { "Yongha Yoo" => "inkyfox@oo-v.com", "RxSwift Community" => "community@rxswift.org" }
  s.platform         = :ios, "8.0"
  s.source           = { :git => "https://github.com/pavelR/RxGoogleMaps.git", :tag => s.version.to_s }
  s.requires_arc          = true
  s.ios.deployment_target = '8.0'
  s.source_files          = 'Sources/*.swift'

  s.dependency 'RxSwift', '~> 4.0'
  s.dependency 'RxCocoa', '~> 4.0'

  # Integration Google Maps
  s.libraries = [
      'c++',
      'z',
  ]

  s.frameworks = [
        'Accelerate',
        'CoreImage',
        'CoreTelephony',
        'CoreText',
        'GLKit',
        'ImageIO',
        'OpenGLES',
        'QuartzCore'
  ]

  s.vendored_frameworks = [
        "Frameworks/Base/Frameworks/GoogleMapsBase.framework",
        "Frameworks/Maps/Frameworks/GoogleMaps.framework",
        "Frameworks/Maps/Frameworks/GoogleMapsCore.framework",
  ]

  s.resources = [
        "Frameworks/Maps/Frameworks/GoogleMaps.framework/Resources/GoogleMaps.bundle"
      ]

  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '4.0',
    'OTHER_LDFLAGS' => '$(inherited) -ObjC',
  }
end
