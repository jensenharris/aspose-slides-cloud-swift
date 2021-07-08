Pod::Spec.new do |s|
  s.name             = 'AsposeSlidesCloud'
  s.version          = '21.6.0'
  s.summary          = 'SDK for Aspose.Slides Cloud.'
  s.description      = <<-DESC
This is a library for communication with Aspose.Slides Cloud REST API. Its methods are wrappers for corresponding HTTP calls.
                       DESC

  s.homepage         = 'https://github.com/aspose-slides-cloud/aspose-slides-cloud-swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Victor Putrov' => 'victor.putrov@aspose.com' }
  s.source           = { :git => 'https://github.com/aspose-slides-cloud/aspose-slides-cloud-swift.git', :tag => s.version.to_s }
  s.platform = :osx
  s.osx.deployment_target = "10.12"
  s.swift_version = "4.2.3"
  s.source_files = 'AsposeSlidesCloud/**/*'

end
