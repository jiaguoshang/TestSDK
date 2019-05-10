Pod::Spec.new do |s|
  s.name = "TestSDK"
  s.version = "0.1.2"
  s.summary = "A short description of TestSDK."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"jiaguoshang"=>"jia12216@163.com"}
  s.homepage = "https://github.com/jiaguoshang/TestSDK"
  s.description = "TODO: Add long description of the pod here."
  s.source = { :path => '.' }

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'ios/TestSDK.framework'
end
