Pod::Spec.new do |s|
  s.name         = "Fidel"
  s.version      = "2.0.0"
  s.summary      = "Fidel API iOS SDK."
  s.description  = "Fidel API is a platform that makes it easy for developers to link payment cards to loyalty and expense management services."
  s.homepage     = "https://fidelapi.com/"
  s.license      = "MIT"
  s.authors      = { "Fidel" => "developer@fidel.uk" }
  s.source       = { :git => "https://github.com/FidelLimited/fidel-ios.git", :tag => "#{s.version}"}
  s.requires_arc = true
  s.platform     = :ios, "9.1"
  s.ios.vendored_frameworks = 'Fidel.xcframework'
end
