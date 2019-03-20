require "json"

def store_message(string)
  puts "escribiendo libro"
  File.open("./public/messages.txt", "a+") do |file|
    file.puts(string)
  end
end

def read_messages
  newFile = []
  puts "leyendo libro"
  return [] unless File.exist?("./public/messages.txt")
  file = File.read("./public/messages.txt").split("\n")
  file.each do |x|
    newFile.push(JSON.parse x.gsub("=>", ":"))
  end
  
  # newFile = JSON.parse file.gsub("=>", ":")
  # puts "this is #{newFile}"
  # puts newFile.class
  # puts "this is #{newFile}"
  # file.each do |val|
  #   puts val["name"]
  #   puts val["email"]
  #   puts val["message"]
  # end
  newFile

end

read_messages