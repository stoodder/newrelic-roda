# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'newrelic-roda/version'

Gem::Specification.new do |gem|
  gem.name          = 'newrelic-roda'
  gem.version       = NewRelic::Roda::VERSION
  gem.authors       = ['Michal Cichra', "Richard Huang"]
  gem.email         = ['m@o2h.cz', "flyerhzm@gmail.com"]
  gem.description   = %q{newrelic instrument for roda}
  gem.summary       = %q{newrelic instrument for roda}
  gem.homepage      = 'https://github.com/mikz/newrelic-roda'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'roda'
  gem.add_runtime_dependency 'newrelic_rpm'
end
