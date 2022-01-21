# Vista

require_relative 'controller'

class View
  def ask_user_for_recipe
    puts "¿Que receta le gustaria guardar?"
    name = gets.chomp
    puts "Escriba una pequeña descripcion:"
    description = gets.chomp
    return [name, description]
  end

  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name}"
    end
  end

  def ask_user_for_index
    puts "¿Que receta le gustaria eliminar? (Escribiendo un numero..)"
    gets.chomp
  end
end
