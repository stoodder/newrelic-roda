# -*- encoding: utf-8 -*-

# This is a fork of the original NewRelic::Roda gem
# which was maintained by Michal Cichra <m@o2h.cz>
# and Richard Huang <flyerhzm@gmail.com>. The source
# of the original gem can be found at:
#   https://github.com/mikz/newrelic-roda

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'newrelic-roda/version'

Gem::Specification.new do |gem|
  gem.name          = 'newrelic-roda'
  gem.version       = NewRelic::Roda::VERSION
  gem.authors       = ['David Antaramian']
  gem.email         = ['david@antaramian.com']
  gem.summary       = 'NewRelic instrumentation for Roda'
  gem.description   = <<-MD
    Provides [NewRelic APM](http://newrelic.com/application-monitoring)
    instrumentation for the [Roda](http://roda.jeremyevans.net/) framework
    by Jeremy Evans. This is a fork of the original gem. This fork
    is maintained by REX Labs, Inc. and David Antaramian, _et al_.
  MD
  gem.license       = 'MIT'
  gem.homepage      = 'https://github.com/REXLabsInc/newrelic-roda'


  gem.files         = Dir['lib/*.rb']
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'roda', '~> 3.2'
  gem.add_runtime_dependency 'newrelic_rpm', '~> 3.14', '>= 3.14.0.305'

  gem.add_development_dependency 'rake', '~> 10.0'
  gem.add_development_dependency 'rspec', '~> 3.4'
  gem.add_development_dependency 'rack-test', '~> 0.6'
end
