# Repositorio (Base de datos que no persiste)
require_relative 'controller'
require_relative 'recipe'

class Cookbook
  # initialize(csv_file_path) que carga el Recipe existente desde el CSV.
  def initialize(csv_file_path)
    @csv_file = csv_file_path
    @recipes = []
    load_csv
  end

  # all el cual devuelve todas las recetas.
  def all
    @recipes
  end

  # add_recipe(recipe) la cual agrega una nueva receta al recetario.
  def add_recipe(recipe)
    @recipes << recipe
    save_to_csv
  end

  # remove_recipe(recipe_index) el cual borra una receta del recetario.
  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
    save_to_csv
  end

  # -------------- CSV -----------------------

  def load_csv
    CSV.foreach(@csv_file) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def save_to_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
