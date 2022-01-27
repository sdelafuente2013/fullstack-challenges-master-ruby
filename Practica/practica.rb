class Meals
  attr_reader :id, :name, :price
  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @price = attributes[:price]
  end
end

meals_one = Meals.new(id: 1, name: "Hamburgueses", price: 600)
p meals_one
