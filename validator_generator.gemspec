# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "validator_generator/version"

Gem::Specification.new do |s|
  s.name        = "validator_generator"
  s.version     = ValidatorGenerator::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kosuke Matsuda"]
  s.email       = ["hi@matsuda.me"]
  s.homepage    = "https://github.com/matsuda/validator_generator"
  s.summary     = %q{Rails 3 generator plugin that generates validator's skeleton files.}
  s.description = %q{Rails 3 generator plugin that generates validator's skeleton files.}

  s.rubyforge_project = "validator_generator"
  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "railties", ">= 3.0.0"
  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rails", ">= 3.0.0"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
