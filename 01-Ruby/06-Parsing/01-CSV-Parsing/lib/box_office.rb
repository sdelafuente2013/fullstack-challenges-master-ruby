require 'csv'

def most_successful(number, max_year, file_path)
  film_finded = []

  # Agregamos la cantidad de peliculas que son menores al año elegido
  CSV.foreach(file_path) do |row|
    film_finded << { name: row[0], year: row[1].to_i, earnings: row[2].to_i } if row[1].to_i < max_year
  end
  # Filtramos por las que tienen mas ganancias (la cantidad la elige el usuario mediante: number)
  film_finded = film_finded.max_by(number) { |movie| movie[:earnings] }

  return film_finded
end
