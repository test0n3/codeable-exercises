require "json"

def store_message(string)
  puts "escribiendo libro"
  File.open("./public/messages.txt", "a+") do |file|
    file.puts(string)
  end
end

def read_messages
  puts "leyendo libro"
  return [] unless File.exist?("./public/messages.txt")
  file = File.read("./public/messages.txt").split("\n")
  # newFile = JSON.parse file.gsub("=>", ":")
  puts "this is #{file}"
  puts file.class
  # puts "this is #{newFile}"
  file.each do |val|
    puts val["name"]
    puts val["email"]
    puts val["message"]
  end

end

read_messages