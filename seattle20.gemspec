# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "seattle20/version"

Gem::Specification.new do |s|
  s.name        = "seattle20"
  s.version     = Seattle20::VERSION
  s.authors     = ["Joel Stimson"]
  s.email       = ["contact@cleanroomstudios.com"]
  s.homepage    = "http://www.cleanroomstudios.com"
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "seattle20"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"

  s.add_runtime_dependency "net/http"
  s.add_runtime_dependency "open-uri"
end
