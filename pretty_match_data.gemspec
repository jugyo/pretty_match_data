# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "pretty_match_data"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["jugyo"]
  s.email       = ["jugyo.org@gmail.com"]
  s.homepage    = "https://github.com/jugyo/pretty_match_data"
  s.summary     = %q{Pretty MatchData}
  s.description = %q{Pretty MatchData. It provides pretty #to_s method}

  s.rubyforge_project = "pretty_match_data"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "term-ansicolor"
end
