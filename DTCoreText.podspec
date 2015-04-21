Pod::Spec.new do |spec|
  spec.name         = 'DTCoreText'
  spec.version      = '1.1.0'
  spec.platform     = :ios, '5.0'
  spec.license      = 'BSD'
  spec.source       = { :git => 'https://github.com/Cocoanetics/DTCoreText.git', :tag => spec.version.to_s }
  spec.source_files = 'Core/Source/*.{h,m,c}'
  spec.dependency 'DTFoundation/Core', '~>1.0'
  spec.dependency 'DTFoundation/DTHMLParser', '~>1.0'
  spec.frameworks   = 'MediaPlayer', 'QuartzCore', 'CoreText', 'CoreGraphics', 'ImageIO'
  spec.requires_arc = true
  spec.homepage     = 'https://github.com/Cocoanetics/DTCoreText'
  spec.summary      = 'Methods to allow using HTML code with CoreText.'
  spec.author       = { 'Oliver Drobnik' => 'oliver@drobnik.com' }
  spec.library      = 'xml2'
  spec.xcconfig     = { 'HEADER_SEARCH_PATHS' => '"$(SDKROOT)/usr/include/libxml2"' }
  spec.prefix_header_contents = '#import <CoreText/CoreText.h>'
  spec.resources = 'DTCoreTextFontOverrides.plist'
  spec.prepare_command = <<-CMD
     cd ./Core/Source
     /usr/bin/xxd -i default.css default.css.c
  CMD
end
