module Api
  class Ping < Roda
    route do |r|
      r.on 'ping' do
        r.get do
          '{"ping":"pong"}'
        end
      end

      r.on 'nested/:multi/:stuff' do |multi, stuff|
        { multi => stuff }.to_json
      end

      r.on ':param' do |param|
        sleep(0.2)
        puts 'slept 0.2'
        r.on ':other' do |other|
          sleep(0.3)
          puts 'slept 0.3'
          r.get do
            sleep(0.4)
            puts 'slept 0.4'
            { param => other }.to_s
          end
        end
      end

    end
  end
end
