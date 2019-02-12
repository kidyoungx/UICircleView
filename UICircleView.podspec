Pod::Spec.new do |s|
  s.name         = "UICircleView"
  s.version      = "1.0.1"
  s.summary      = "A UIView that clip to Circle and restrict the UIEvent in its radius."

  s.description  = <<-DESC
                    A UIView that clip to Circle and restrict the UIEvent in its radius. Typical use for a Circle control panel.
                   DESC

  s.homepage     = "https://github.com/kidyoungx/UICircleView"

  s.license      = "MPL-2.0"

  s.author             = { "Kid Young" => "kidyoungx@gmail.com" }

  s.platform     = :ios, "5.0"

  s.source       = { :git => "https://github.com/kidyoungx/UICircleView.git", :tag => "#{s.version}" }

  s.source_files  = "UICircleView", "UICircleView/**/*.{h,m}"
  s.exclude_files = "SampleUICircleView"

  s.public_header_files = "UICircleView/**/*.h"

  s.requires_arc = true

end
