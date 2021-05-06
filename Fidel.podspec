Pod::Spec.new do |s|
  s.name         = "Fidel"
  s.version      = "1.8.5-rc1"
  s.summary      = "Fidel iOS SDK."
  s.description  = "Fidel is an API platform that makes it easy for developers to link payment cards to loyalty and marketing services."
  s.homepage     = "https://fidel.uk/"
  s.license      = "MIT"
  s.authors      = { "Fidel" => "developer@fidel.uk" }
  s.source       = { :git => "https://github.com/FidelLimited/fidel-ios.git", :tag => "#{s.version}"}
  s.requires_arc = true
  s.platform     = :ios, "9.1"
  s.ios.vendored_frameworks = 'Fidel.xcframework'
  s.dependency  'CardIO'
  s.script_phase = {
    :name => 'Fidel CardIO Card Scanning Module Creation Script',
    :execution_position => :before_compile,
    :output_files => ['${BUILT_PRODUCTS_DIR}/../CardIOModuleMap/module.modulemap'],
    :script => '
mkdir -p "${BUILT_PRODUCTS_DIR}/../CardIOModuleMap"
cat <<EOF > "${BUILT_PRODUCTS_DIR}/../CardIOModuleMap/module.modulemap"
module CardIO [system] {
    header "${SRCROOT}/CardIO/CardIO/CardIO.h"
    export *
}
EOF'
}
end
