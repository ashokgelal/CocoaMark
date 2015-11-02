Pod::Spec.new do |s|
  s.name = 'CocoaMark'
  s.version = '0.3'
  s.summary = 'A simple Markdown parser for Cocoa.'
  s.homepage = 'https://github.com/clemensg/CocoaMark'
  s.license = 'MIT'
  s.author = { 'Clemens Gruber' => 'clemensgru@gmail.com' }
  s.source = { :git => 'https://github.com/clemensg/CocoaMark.git', :tag => 'v0.3' }
  s.requires_arc = true

  s.default_subspec = 'standard'

  s.subspec 'standard' do |ss|
    ss.source_files = 'CocoaMark/*.{h,m}'
    ss.dependency 'hoextdown', :git => 'https://github.com/ashokgelal/hoextdown'
  end

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.8'
end
