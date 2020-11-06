
class Application
   
    def call(env)
        resp=Rack::Response.new

        return[200,{'Content-Type' => 'text/html'}, message]
    end
       def message
        current_time=Time.now.hour
         if current_time > 11
            ["<em>Good Afternoon!</em>"]
        else
            ["<em>Good Morning!</em>"]
        end
    end

end


