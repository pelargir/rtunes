# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rtunes/version'

Gem::Specification.new do |spec|
  spec.name          = "rtunes"
  spec.version       = Rtunes::VERSION
  spec.authors       = ["Matthew Bass"]
  spec.email         = ["pelargir@gmail.com"]
  spec.description   = %q{Control iTunes remotely using Ruby OSA calls.}
  spec.summary       = %q{Control iTunes remotely using Ruby OSA calls.}
  spec.homepage      = "http://github.com/pelargir/rtunes"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rubyosa19"
end
