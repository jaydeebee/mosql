# -*- coding: utf-8 -*-
$:.unshift(File.expand_path("lib", File.dirname(__FILE__)))
require 'mosql/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Mahesh M"]
  gem.email         = ["maheshmukundan@gmail.com"]
  gem.description   = %q{A library for streaming MongoDB to SQL}
  gem.summary       = %q{MongoDB -> SQL streaming bridge}
  gem.homepage      = "https://github.com/maheshm/mosql"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mosql-mysql"
  gem.require_paths = ["lib"]
  gem.version       = MoSQL::VERSION

  gem.add_runtime_dependency "sequel"
  gem.add_runtime_dependency "mysql2"
  gem.add_runtime_dependency "rake"
  gem.add_runtime_dependency "log4r"
  gem.add_runtime_dependency "json"

  gem.add_runtime_dependency "mongoriver", "0.4"

  gem.add_runtime_dependency "mongo", "~> 1.10"
  gem.add_runtime_dependency "bson", "~> 1.10"
  gem.add_runtime_dependency "bson_ext", "~> 1.10"

  gem.add_development_dependency "minitest"
  gem.add_development_dependency "mocha"
end
