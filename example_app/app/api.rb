#$trace = TracePoint.new(:call) do |tp|
#  params = tp.defined_class.instance_method(tp.method_id).parameters
#  arguments = params.map do |(_type, name)|
#    [name, tp.binding.local_variable_get(name)]
#  end
#  p [tp.defined_class, tp.method_id, tp.event, arguments]
#end

module App
  class Api < Roda

    route do |r|
      # $enabled ||= ($trace.enable; true)

      r.root do
        'root route'
      end

      r.on 'api' do
        sleep(0.1)
        puts 'slept 0.1'
        r.run ::Api::Ping
      end
    end
  end
end
