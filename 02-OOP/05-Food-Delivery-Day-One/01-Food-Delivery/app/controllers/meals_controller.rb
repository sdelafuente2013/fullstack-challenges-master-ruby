# Controller (Controlador)

require_relative "../models/meal"

class MealsController
  def initialize(repository)
    @meal_repository = repository
  end

  def add
    puts "Ingrese el plato para agregar: "
    name_meal = gets.chomp
    puts "Ingrese el valor: "
    price_meal = gets.chomp.to_i
    @meal_repository.create(Meal.new(name: name_meal, price: price_meal))
  end

  def list
    @meal_repository.all.each do |meal|
      puts "#{meal.name} : #{meal.price}€"
    end
  end
end
