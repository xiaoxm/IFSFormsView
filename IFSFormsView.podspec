#
# Be sure to run `pod lib lint IFSFormsView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IFSFormsView'
  s.version          = '1.0'
  s.summary          = '用于快速创建表单控件'
  s.homepage         = 'https://github.com/xiaoxm/IFSFormsView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'herui' => 'herui@ifensi.com' }
  s.source           = { :git => 'https://github.com/xiaoxm/IFSFormsView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'IFSFormsView/Classes/**/*'
  
  s.resource_bundles = {
    'IFSFormsView' => ['IFSFormsView/Assets/*.png']
  }

  s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Masonry', '~> 1.1.0'
end
