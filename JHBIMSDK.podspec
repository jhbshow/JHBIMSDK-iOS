Pod::Spec.new do |spec|
  spec.name         = 'JHBIMSDK'
  spec.version      = '1.0.0'
  spec.platform     = :ios
  spec.ios.deployment_target = '9.0'
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.homepage     = 'https://github.com/jhbshow/JHBIMSDK-iOS'
  spec.documentation_url = 'https://github.com/jhbshow/JHBIMSDK-iOS'
  spec.authors      = 'davis'
  spec.summary      = '腾讯带UI的IM私有化部署'
  spec.xcconfig     = { 'VALID_ARCHS' => 'armv7 arm64 x86_64', }
  spec.libraries    = 'stdc++'

  spec.requires_arc = true

  spec.source       = { :git => "https://github.com/jhbshow/JHBIMSDK-iOS", :tag => spec.version.to_s }
  spec.dependency 'TUICore','6.1.2155'
  spec.source_files = '**/JHBIMSDK/**/*.{h,m,mm}'
  spec.vendored_libraries = ['**/JHBIMSDK/VoiceConvert/*.a']
  spec.resource = [
      '**/JHBIMSDK/Resources/*.bundle'
  ]

  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
