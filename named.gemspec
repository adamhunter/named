# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'named/version'

Gem::Specification.new do |spec|
  spec.name          = "named"
  spec.version       = Named::VERSION
  spec.authors       = ["Adam Hunter", "Nathan Long"]
  spec.email         = ["adamhunter@me.com", "nathanmlong@gmail.com"]
  spec.description   = %q{Give anonymous modules and classes names when they are inspected.}
  spec.summary       = %q{Allows providing a name when creating an anonymous module or class using Named::Module.new or Named::Class.new}
  spec.homepage      = "https://github.com/adamhunter/named"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",   "~> 1.3"
  spec.add_development_dependency "rspec",     "~> 2.13"
  spec.add_development_dependency "simplecov", "~> 0.7"
  spec.add_development_dependency "rake"
end
