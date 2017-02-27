# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/find_replace_string/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-find_replace_string'
  spec.version       = Fastlane::FindReplaceString::VERSION
  spec.author        = %q{Jonathan Ritchie}
  spec.email         = %q{jonathan.ritchie@orionhealth.com}

  spec.summary       = %q{Find a string in a file and replace it with a new one.}
  # spec.homepage      = "https://github.com/<GITHUB_USERNAME>/fastlane-plugin-find_replace_string"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 2.14.2'
end
