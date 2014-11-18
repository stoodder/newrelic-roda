# NewRelic::Roda

NewRelic instrumentation for the [Roda][0], forked from [newrelic-grape][1].

## Installation

Add this line to your application's Gemfile:

    gem 'newrelic-roda'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install newrelic-roda

If you're using Rails, make sure that you've told rack to start the agent for Roda:

    # config.ru
    require ::File.expand_path('../config/environment',  __FILE__)

    # You need to manually start the agent
    NewRelic::Agent.manual_start

    run YourApplication::Application


## Usage

Ensure that you have working NewRelic instrumentation. Add the `newrelic-roda` gem. That's it.

## Disabling Instrumentation

Set `disable_roda` in `newrelic.yml` or `ENV['DISABLE_NEW_RELIC_RODA']` to disable instrumentation.

## Testing

This gem naturally works in NewRelic developer mode. For more information see the [NewRelic Developer Documentation][2].

To ensure instrumentation in tests, check that `perform_action_with_newrelic_trace` is invoked on an instance of `NewRelic::Agent::Instrumentation::Roda` when calling your API.

### RSpec

``` ruby
describe NewRelic::Agent::Instrumentation::Roda do
  it "traces" do
    NewRelic::Agent::Instrumentation::Roda
      .any_instance
      .should_receive(:perform_action_with_newrelic_trace)
      .and_yield
    get "/ping"
    response.status.should == 200
  end
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Update `CHANGELOG.md` describing your changes
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request

[0]: https://github.com/jeremyevans/roda
[1]: https://github.com/flyerhzm/newrelic-grape
[2]: https://newrelic.com/docs/ruby/developer-mode
