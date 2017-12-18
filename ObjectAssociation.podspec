Pod::Spec.new do |s|
  s.name             = "ObjectAssociation"
  s.version          = "1.2.0"
  s.summary          = "An object association helper for Swift extensions."
  s.homepage         = "https://github.com/Meniny/ObjectAssociation"
  s.license          = 'MIT'
  s.author           = { "Elias Abel" => "Meniny@qq.com" }
  s.source           = { :git => "https://github.com/Meniny/ObjectAssociation.git", :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.osx.deployment_target = '10.10'

  s.source_files = 'ObjectAssociation/*.*'
  s.module_name = 'ObjectAssociation'
  s.public_header_files = 'ObjectAssociation/*.h'
  s.frameworks = 'Foundation'
end
