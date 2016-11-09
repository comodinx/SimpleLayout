Pod::Spec.new do |s|

  s.name         = "SimpleLayout"
  s.version      = "0.2.0"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.summary      = "Simple layout written in Swift"
  s.homepage     = "https://github.com/comodinx/SimpleLayout"
  s.screenshots  = "https://raw.githubusercontent.com/comodinx/SimpleLayout/master/Screenshots/DemoExample.png"
  s.authors      = { "Nicolas Molina" => "comodinx@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/comodinx/SimpleLayout.git", :tag => s.version }

  s.source_files = "Sources/*.swift"

end
