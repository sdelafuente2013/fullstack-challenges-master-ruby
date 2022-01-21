# Repositorio (Base de datos que no persiste)
require_relative 'controller'
require_relative 'recipe'

class Cookbook
  # initialize(csv_file_path) que carga el Recipe existente desde el CSV.
  def initialize(csv_file_path)
    @csv = csv_file_path
    @recipes = []
  end

  # all el cual devuelve todas las recetas.
  def all
    @recipes
  end

  # add_recipe(recipe) la cual agrega una nueva receta al recetario.
  def add_recipe(recipe)
    @recipes << recipe
  end

  # remove_recipe(recipe_index) el cual borra una receta del recetario.
  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
  end
end
