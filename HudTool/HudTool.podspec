#
# Be sure to run `pod lib lint HudTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HudTool'
  s.version          = '0.1.0'
  s.summary          = 'A short description of HudTool.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  s.homepage         = 'https://github.com/xing/HudTool'
  #s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xing' => 'xinxof@foxmail.com' }
  s.source           = { :git => 'https://github.com/xing/HudTool.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'HudTool/Classes/**/*'
  s.dependency 'MBProgressHUD', '1.2.0'
end
