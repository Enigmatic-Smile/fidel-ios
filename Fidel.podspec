Pod::Spec.new do |s|
  s.name         = "Fidel"
  s.version      = "1.2.5"
  s.summary      = "Fidel iOS SDK."
  s.description  = "Fidel is an API platform that makes it easy for developers to link payment cards to loyalty and marketing services."
  s.homepage     = "https://fidel.uk/"
  s.license      = "MIT"
  s.authors      = { "Cornel Chitanu" => "tap@dolfn.com" }
  s.source       = { :git => "https://github.com/FidelLimited/fidel-ios.git", :tag => "#{s.version}"}
  s.requires_arc = true
  s.platform     = :ios, "9.1"
  s.ios.vendored_frameworks = 'Fidel.framework'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0.2' }
end
