class Application

  def call(env)
    resp = Rack::Response.new
    t = Time.now
    if t.strftime("%k").to_i < 12
    #time.strftime("%k")   returns the hour e.g. "4:00pm = 16"
     resp.write "Good Morning!"
   elsif
     resp.write "Good Afternoon!"
   else
     nil
   end
    resp.finish
  end

end
