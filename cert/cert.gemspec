# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cert/version'

Gem::Specification.new do |spec|
  spec.name          = "cert"
  spec.version       = Cert::VERSION
  spec.authors       = ["Felix Krause"]
  spec.email         = ["cert@krausefx.com"]
  spec.summary       = 'Create new iOS code signing certificates'
  spec.description   = 'Create new iOS code signing certificates'
  spec.homepage      = "https://fastlane.tools"

  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.0.0'

  spec.files = Dir["lib/**/*"] + %w(bin/cert README.md LICENSE)

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'fastlane', ">= 2.0.0", "< 3.0.0"

  # Development only
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake', '< 12'
  spec.add_development_dependency 'rspec', '~> 3.1.0'
  spec.add_development_dependency 'rspec_junit_formatter', '~> 0.2.3'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'yard', '~> 0.8.7.4'
  spec.add_development_dependency 'webmock', '~> 1.19.0'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'rubocop', '~> 0.44.0'

  spec.post_install_message = "\e[1;33;40mPlease use `fastlane #{spec.name}` instead of `#{spec.name}` from now on.\e[0m"
end