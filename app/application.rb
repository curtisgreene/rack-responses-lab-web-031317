class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.new
    if time.hour < 12
      resp.write "Good Morning!"

    elsif time.hour > 12 && time.hour < 18
      resp.write "Good Afternoon!"

    elsif
      resp.write "Good Evening!"
    end
    resp.finish
  end

end
