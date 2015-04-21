Pod::Spec.new do |spec|
  spec.name         = 'DTCoreText'
  spec.version      = '1.0.2'
  spec.platform     = :ios
  spec.license      = 'BSD'
  spec.source       = { :git => 'https://github.com/Cocoanetics/DTCoreText.git', :tag => '1.0.2' }
  spec.source_files = 'Core/Source/*.{h,m,c}'
  spec.frameworks   = 'MediaPlayer', 'QuartzCore', 'CoreText', 'CoreGraphics', 'ImageIO'
  spec.requires_arc = true
  spec.homepage     = 'https://github.com/Cocoanetics/DTCoreText'
  spec.summary      = 'Methods to allow using HTML code with CoreText.'
  spec.author       = { 'Oliver Drobnik' => 'oliver@drobnik.com' }
  spec.library      = 'xml2'
  spec.xcconfig     = { 'HEADER_SEARCH_PATHS' => '"$(SDKROOT)/usr/include/libxml2"' }
end
