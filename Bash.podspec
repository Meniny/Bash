Pod::Spec.new do |s|
  s.name        = 'Bash'
  s.module_name = 'Bash'
  s.version     = '1.0.0'
  s.summary     = 'Run shell commands from Swift scripts and command line tools.'

  s.homepage    = 'https://github.com/Meniny/Bash'
  s.license     = { type: 'MIT', file: 'LICENSE.md' }
  s.authors     = { 'Elias Abel' => 'admin@meniny.cn' }
  s.social_media_url = 'https://meniny.cn/'

  s.osx.deployment_target     = '10.12'

  s.requires_arc        = true
  s.source              = { git: 'https://github.com/Meniny/Bash.git', tag: s.version.to_s }
  s.source_files        = 'Bash/**/*.swift'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1' }
  s.swift_version       = '4.1'
end
