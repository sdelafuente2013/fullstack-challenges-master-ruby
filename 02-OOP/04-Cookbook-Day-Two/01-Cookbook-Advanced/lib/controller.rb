# Controlador
require_relative 'view'
require_relative 'recipe'
require_relative 'cookbook'

class Controller
  attr_reader :name

  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    # 1. Fetch tasks from repo
    # Buscar del REPOSITORIO todos las recetas y las guarda en una variable en modo de []
    recipes = @cookbook.all

    # 2. Send them to view for display
    # Le pide a la VISTA que muestre todas las recetas
    @view.display(recipes)
  end

  def create
    # 1. Get description from view
    # Le pide a la VISTA que le traiga la receta que el usuario quiere guardar
    desc_name_recipe = @view.ask_user_for_recipe

    # 2. Create new recipe
    # Utiliza el MODELO para que generar esa receta
    recipe = Recipe.new(desc_name_recipe[0], desc_name_recipe[1])

    # 3. Add to repo
    # Utiliza el repositorio para guardar esa receta generada
    @cookbook.add_recipe(recipe)

    # 4. Muestra la lista actual
    list
  end

  def destroy
    # 1. Display list with indices
    # Muestra nuevamente la lista de recetas..
    list

    # 2. Ask user for index
    # Pregunta mediante la VISTA por cual le gustaria poder eliminar
    index = @view.ask_user_for_index.to_i - 1

    # 3. Remove from repository
    # Utilizando el metodo del REPOSITORIO elimina el indice escogido
    @cookbook.remove_recipe(index)

    # 4. Muestra la lista actual
    list
  end
end
