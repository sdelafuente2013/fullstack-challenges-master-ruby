class Restaurant
  # TODO: add relevant accessors if necessary
  attr_reader :average_rating, :city

  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @average_rating = 0
    @count_rate = 0
    @sum_rate = 0
  end

  def rate(new_rate)
    @count_rate += 1
    @sum_rate += new_rate
    @average_rating = @sum_rate / @count_rate.to_f
  end

  def self.filter_by_city(restaurants, city)
    restaurants.select { |restaurant| restaurant.city.include?(city) }
  end
end
