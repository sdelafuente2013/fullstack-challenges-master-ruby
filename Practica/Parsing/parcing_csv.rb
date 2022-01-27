require 'csv'


# Visualizando/extrayendo los datos desde el CSV
def load
  filepath = 'nombre_apellido.csv'
  array = []
  CSV.foreach(filepath, headers: true) do |row|
    array << "#{row[0]} | #{row[1]} | #{row[2]}"
  end
  return array
end
# CSV.foreach(filepath, headers: true) do |row|
#   puts "#{row['last_name']} #{row['name']}"
# end

# -----------------------------------------------------------------

# Almacenando en el CSV

# CSV.open(filepath, "wb") do |csv|
#   csv << ["John", "Lenon"]
#   csv << ["Paul", "McCartney"]
#   csv << ["santi", "de la fuente"]
#   csv << ["mile", "viera"]
# end
# row = ["santi", 1995, 151155]

# hash = []

# # hash << {name: "John", last_name: "John"}
# hash << {:name => row[0], :year => row[1], :earnings => row[2]}

# p hash

p load
