# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec_timeout/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec_timeout"
  spec.version       = RSpecTimeout::VERSION
  spec.authors       = ["Sam Phippen"]
  spec.email         = ["samphippen@googlemail.com"]

  spec.summary       = %q{ensure your test suites never get too slow}
  spec.description   = %q{times out your rspec tests so that they can't take too long to run}
  spec.homepage      = "http://samphippen.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
