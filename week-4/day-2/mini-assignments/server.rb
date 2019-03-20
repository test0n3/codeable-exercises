require "sinatra"
require "erb"
require_relative "./controllers/guestbook"

# home
get "/" do
  @name = "Carlos Ayala"
  @messages = read_messages
  erb :home
end

# guestbook
post "/" do
  @data = {"name" => params["contact_name"], "email" => params["contact_email"], "message" => params["contact_message"]}
  puts @data
  store_message(@data)
  redirect "/#contact"
end