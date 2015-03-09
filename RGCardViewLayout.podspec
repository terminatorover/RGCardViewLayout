Pod::Spec.new do |s|

  s.name          = "RGCardViewLayout"
  s.version       = "1.0.1"
  s.summary       = "Collection view card layout."
  s.description   = "This is a layout that clones the interaction of going through city \"cards\" in the City Guide App. (this app is #3 for the top iOS app animations on the raywenderlich)."
  
  s.author        = "Robera Geleta"
  s.license       = 'MIT'
  s.homepage      = "https://github.com/terminatorover/RGCardViewLayout"
  
  s.platform      = :ios, "6.0"
  s.requires_arc  = true
  s.source        = { :git => "https://github.com/rossmobileTeam/RGCardViewLayout.git", :tag => "1.0.1" }
  s.frameworks    = "UIKit", "Foundation", "CoreGraphics"
  s.source_files  = "RGCardViewLayout.{h,m}"
  s.public_header_files = "RGCardViewLayout.h"

end
