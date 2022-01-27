# require "open-uri"
# require "nokogiri"

# ingredient = "chocolate"
# url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

# html_file = URI.open(url).read
# html_doc = Nokogiri::HTML(html_file)

# html_doc.search(".standard-card-new__article-title").each do |element|
#   puts element.text.strip
#   puts element.attribute("href").value
# end

# Importamos las gemas de Open URI y Nokogiri
require 'open-uri'
require 'nokogiri'

# Preparamos la busqueda y la url
serch_ingredient = "queso"
url = "https://www.recetasgratis.net/busqueda?q=#{serch_ingredient}"

# Pasamos a objeto Nokogiri
html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

# Hacemos la busqueda en el array que nos dio Nokogiri
count =
html_doc.search(".resultado").each do |element|
  # Ejercicio: Primeros 5 resultados
  # p element.css("a").text if count < 5
  # count += 1

  # Ejercicio: Ultimos 5 resultados
  # ....
end
