Pod::Spec.new do |s|
  s.name             = 'ScrollStackView'
  s.version          = '1.0.1'
  s.summary          = 'Scroll Stack View'
  s.description      = 'A set of useful utilities'
  s.homepage         = 'https://github.com/DPLibs/ScrollStackView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dmitriy Polyakov' => 'dmitriyap11@gmail.com' }
  s.source           = { :git => 'https://github.com/DPLibs/ScrollStackView.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.source_files = 'ScrollStackView/**/*'
  s.swift_version = '4.2'
end
