Pod::Spec.new do |s|
  s.name = 'PBJHexagon'
  s.version = '0.1.1'
  s.summary = 'iOS hexagon grid layout for UICollectionViews.'
  s.homepage = 'https://github.com/piemonte/PBJHexagon'
  s.social_media_url = 'http://twitter.com/piemonte'
  s.license = 'MIT'
  s.authors = { 'patrick piemonte' => 'piemonte@alumni.cmu.edu' }
  s.source = { :git => 'https://github.com/piemonte/PBJHexagon.git', :tag => 'v0.1.1' }
  s.frameworks = 'QuartzCore', 'UIKit'
  s.platform = :ios, '6.0'
  s.source_files = 'Source'
  s.requires_arc = true
  s.screenshot = 'https://raw.github.com/piemonte/PBJHexagon/master/PBJHexagon.gif'
end
