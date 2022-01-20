require_relative "animal"

class Perro < Animal
  attr_reader :peso

  def initialize(name, peso)
    @name = name
    @peso = peso
  end
end

perro_uno = Perro.new("Blanqui", 5.4)

p perro_uno.name
p perro_uno.peso
