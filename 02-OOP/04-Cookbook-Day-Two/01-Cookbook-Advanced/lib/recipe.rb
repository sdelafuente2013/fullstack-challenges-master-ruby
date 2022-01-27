# Modelo
require_relative 'controller'
require_relative 'cookbook'

class Recipe
  attr_reader :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end
end
