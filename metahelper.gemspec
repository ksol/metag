# -*- encoding: utf-8 -*-
require File.expand_path('../lib/meta_helper/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = "meta-helper"
  s.version       = MetaHelper::VERSION
  s.platform      = Gem::Platform::RUBY
  s.license       = "MIT"
  s.authors       = ["Kevin Soltysiak"]
  s.email         = ["soltysiak.kevin@gmail.com"]
  s.description   = "This library provides ActionView helpers for meta tags generation"
  s.summary       = "Meta tags generation helpers"
  s.homepage      = "https://github.com/ksol/meta-helper"

  s.files         =  Dir.glob("lib/**/*")
  s.files        += %w(metahelper.gemspec)

  s.require_path  = "lib"
end
