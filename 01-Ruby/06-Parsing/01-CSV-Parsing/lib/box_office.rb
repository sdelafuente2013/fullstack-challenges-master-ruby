require 'csv'

# file_path = "movies.csv"

def most_successful(number, max_year, file_path)
  film_finded = []
  CSV.foreach(file_path).each_with_index do |row, index|
    if (row[1].to_i < max_year) && (film_finded.length < number)
      film_finded[index] = { name: row[0], year: row[1].to_i, earnings: row[2] }
    else
      return film_finded
    end
  end
end

# p most_successful(2, 2009, file_path)
