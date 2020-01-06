require 'rack'
require 'pry'

class Application

    def call(env)
      resp = Rack::Response.new

      binding.pry

      if Time.now.to_i < 12
        resp.write "#{Time.now}\n"
        resp.write "Good Morning!"
      else
        resp.write "#{Time.now}\n"
        resp.write "Good Afternoon!"
      end

      resp.finish
    end
end
