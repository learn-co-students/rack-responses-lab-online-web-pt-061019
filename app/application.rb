class Application

    def call(env)
        resp = Rack::Response.new
        time = Time.now
            #Time.current ???
            #Use Time.current instead of Time.now.
        # binding.pry
            if time.hour >= 12
                resp.write  "Good Afternoon!"
            else
                resp.write "Good Morning!"
            end
        resp.finish
    end
end

# Remember that getting the time may return results in 24 hour time! 
# Anytime after 12 is the afternoon.
# resp.write ""
# resp.finish
# resp.write "\n"

# rackup config.ru
# http://localhost:9292
