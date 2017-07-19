# coding: utf-8
require 'date'

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "orvibo-s20"
  spec.version       = "0.1.0"
  spec.authors       = ["Robert Saenz", "Ryan Hattam"]
  spec.email         = ["robertsaenz@gmail.com", "ryan@hattam.com.au"]
  spec.date          = Date.today
  spec.summary       = 'Ruby library to interface with Orvibo sockets'
  spec.description   = "A simple library to interface with Orvibo sockets"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"
  spec.files         =  ['lib/orvibo-s20.rb', 'lib/orvibo-s20-outlet.rb', 'lib/util/hex.rb', 'lib/util/string.rb']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
