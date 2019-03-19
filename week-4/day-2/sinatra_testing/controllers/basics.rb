def store_name(string)
  puts "Guardar archivo"
  File.open("./public/names.txt", "a+") do |file|
    file.puts(string)
  end
end

def read_names
  puts "Leer archivo"
  return [] unless File.exist?("./public/names.txt")
  File.read("./public/names.txt").split("\n")
end

