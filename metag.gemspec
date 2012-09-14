# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'metag/version'

Gem::Specification.new do |s|
  s.name          = "metag"
  s.version       = Metag::VERSION
  s.platform      = Gem::Platform::RUBY
  s.license       = "MIT"
  s.authors       = ["Kevin Sołtysiak"]
  s.email         = ["soltysiak.kevin@gmail.com"]
  s.description   = "This library provides ActionView helpers for meta tags generation"
  s.summary       = "Meta tags generation helpers"
  s.homepage      = "https://github.com/ksol/metag"
  s.files         =  `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end
