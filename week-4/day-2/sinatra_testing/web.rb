=begin
require "sinatra"

get "/hello" do
  "Hello Sinatra"
end

get "/hello/:name" do
  "Hello #{params['name']}"
end
=end

require "sinatra"
require "erb"
=begin
get "/hello/:nombre" do
  # html = "<h1>Hello <%= params[:nombre] %>, email: <%= email %>!</h1>"
  html = "<h1>Hello <%= name %>, email: <%= email %>!</h1>"
  # ERB.new(html).result(binding)
  erb(html, { :locals => { :name => params[:nombre], :email => "correo@correo.com" } })
end
=end
get "/hello/:nombre" do
  # @name = params[:nombre]
  name = params[:nombre]
  # html = "<h1>Hello <%= @name %>!</h1>"
  html = "<h1>Hello <%= name %>!</h1>"
  # erb(html)
  ERB.new(html).result(binding)
end

get "/bye/:name" do
  template = "<h1>Bye <%= name %></h1>"
  layout = "<html><body><%= yield %></body></html>"
  erb template, { :locals => params, :layout => layout }
end