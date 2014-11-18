require File.expand_path('../config/environment', __FILE__)

if defined?(NewRelic)
  if ENV['RACK_ENV'] == 'development'
    puts "Loading NewRelic in developer mode ..."
    #require 'new_relic/rack/developer_mode'
    #use NewRelic::Rack::DeveloperMode
  end

  NewRelic::Agent.manual_start
end

require 'api'
run App::Api
