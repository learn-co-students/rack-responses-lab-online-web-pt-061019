class Application
   def call(env)
      resp = Rack::Response.new

      time = Time.now.hour
      greeting = time < 12 ? "Good Morning!" : "Good Afternoon!"
      
      resp.write greeting
      
      resp.finish
   end
end