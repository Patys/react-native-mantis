
Pod::Spec.new do |s|
  s.name         = "RNReactNativeMantis"
  s.version      = "1.0.0"
  s.summary      = "RNReactNativeMantis"
  s.description  = <<-DESC
                  RNReactNativeMantis
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "kontakt@patys.pl" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNReactNativeMantis.git", :tag => "master" }
  s.source_files  = "RNReactNativeMantis/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  s.dependency "Mantis", :git => 'https://github.com/guoyingtao/Mantis'

end
