require 'csv'
require_relative '../models/meal'

class MealRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @meals = []
    @next_id = 1
    load_csv if File.exist?(@csv_file)
  end

  def create(new_meal)
    new_meal.id = @next_id
    @meals << new_meal
    @next_id += 1
    save_csv
  end

  def all
    @meals
  end

  def find(id)
    @meals.find do |meal|
      meal.id == id
    end
  end

  # Guardando en el CSV
  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["id", "name", "price"]
      @meals.each do |meal|
        csv << [meal.id, meal.name, meal.price]
      end
    end
  end

  # Visualizando/extrayendo los datos desde el CSV
  def load_csv
    CSV.foreach(@csv_file, headers: true) do |row|
      @meals << Meal.new(id: row[0].to_i, name: row[1], price: row[2].to_i)
    end
    @next_id = @meals.last.id + 1 unless @meals.empty?
  end
end
