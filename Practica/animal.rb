class Animal
  # TODO: add relevant accessors if necessary
  attr_reader :city, :name

  def initialize
    # TODO: implement constructor with relevant instance variables
    @city = "Buenos aires"
    @name = "Santi"
    # @average_rating = 0
  end
end
#   # TODO: implement .filter_by_city and #rate methods
#   def self.rate(new_rate)
#     new_rate.reduce(:+) / new_rate.size.to_f
#   end

#   def self.filter_by_city(restaurants, city)
#     restaurants.reject { |restaurant| !restaurant.include?(city) }
#   end
# end

# array_ejemplo = ["Argentina", "Peru", "Venezuela"]
# # array_ejemplo = [1,2,3,4]
# # p Restaurant.rate(array_ejemplo)
# # restaurant_uno = Restaurant.new("Buenos Aires", "Santiago")
# # p restaurant_uno.rate([10, 15, 20])
# p Restaurant.filter_by_city(array_ejemplo, "Peru")
