require "sinatra"
require "sinatra/json"

class SearchApp < Sinatra::Base
  helpers Sinatra::JSON

  post "/index" do
    puts "Received index request: #{params.inspect}"
    name = params["file"][":filename"]
    path = params["file"][":tempfile"]
  end

  post "/query" do
    json []
    #string.split(/ |-|—/).map { |w| w.gsub(/\W|_/,"").downcase }
  end
end
