# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "set_theory/version"

Gem::Specification.new do |s|
  s.name        = "set_theory"
  s.version     = SetTheory::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tim Preston"]
  s.email       = ["tim@tp.id.au"]
  s.homepage    = "http://github.com/tehpeh/set_theory"
  s.summary     = %q{Extends Object with nice names for set operations.}
  s.description = %q{Extends Object with nice names for set operations.}

  s.rubyforge_project = "set_theory"

  s.add_development_dependency "gem-release", "~> 0.0.16"
  s.add_development_dependency "rspec", "~> 2.6.0"
  s.add_development_dependency "guard", "~> 0.3.4"
  s.add_development_dependency "guard-rspec", "~> 0.3.1"
  s.add_development_dependency "rb-fsevent", "~> 0.4.0"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
