# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "IVLE/version"

Gem::Specification.new do |s|
  s.name        = "IVLE"
  s.version     = IVLE::VERSION
  s.authors     = ["Ng Guoyou"]
  s.email       = ["fauxface+github@gmail.com"]
  s.homepage    = "https://github.com/gyng/ivle"
  s.summary     = %q{Basic Ruby gem wrapper for NUS IVLE LAPI interface.}
  s.description = %q{Basic Ruby gem wrapper for NUS IVLE LAPI interface. All methods are implemented (but not tested).}
  s.license     = 'MIT'

  s.rubyforge_project = "IVLE"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "faraday"
  s.add_dependency "faraday_middleware"
  s.add_dependency "mechanize"
  s.add_dependency "nokogiri"

  s.add_development_dependency "rspec"
  s.add_development_dependency "debugger"
  s.add_development_dependency "fakeweb"
end
