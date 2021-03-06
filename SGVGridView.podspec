
Pod::Spec.new do |s|
  s.name             = 'SGVGridView'
  s.version          = '1.1.4'
  s.summary          = '表格视图组件'
  s.description      = <<-DESC
通过字典数据直接初始化表格视图。
                       DESC

  s.homepage         = 'https://github.com/SMGMobile/SGVGridView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '季怀奇' => '1026499974@qq.com' }
  s.source           = { :git => 'https://github.com/SMGMobile/SGVGridView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'

  s.source_files = 'SGVGridView/Classes/**/**/*.{h,m}'
  s.public_header_files = 'SGVGridView/Classes/**/**/*.h'
  s.resource_bundles = {
    'SGVGridViewImages' => ['SGVGridView/Assets/*.png']
  }
  s.frameworks = 'UIKit'
  s.dependency 'SDWebImage', '~> 4.0'
  s.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
end
