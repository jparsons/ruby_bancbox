# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_bancbox/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_bancbox"
  spec.version       = RubyBancbox::VERSION
  spec.authors       = ["John Parsons"]
  spec.email         = ["jparsons@klondikefive.com"]
  spec.summary       = %q{Implements an interface with the Bancbox Invest API}
  spec.description   = %q{Implements an interface with the Bancbox Invest API}
  spec.homepage      = 'http://rubygems.org/gems/ruby_bancbox'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency "rest-client"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-nav"
end
