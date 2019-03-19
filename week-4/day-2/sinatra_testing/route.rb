require "sinatra"
require "erb"
require_relative "./controllers/basics"

=begin
get "/hello/:nombre" do
  erb :hello, { :locals => params, :layout => :layout }
end

get "/form/:nombre" do
  erb :form, { :locals => params, :layout => :layout }
end

=end
get "/hello/:nombre" do
  @name = params["nombre"]
  erb :hello
end

get "/form" do
  @name = params["nombre"]
  @names = read_names
  erb :form
end

post "/form" do
  store_name(params["nombre"])
  # "Ok!"
  redirect "/form"
end
