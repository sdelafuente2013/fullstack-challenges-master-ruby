class Animal
  attr_reader :name, :age, :color

  def initialize(name, age, color)
    @name, @age, @color, @@last_namee  = name, age, color, "Viera"
  end

  def accion
    true
  end

  def self.last_name
     @@last_namee
  end

end


animal_uno = Animal.new("Lilo", 2, "Gris")

# p animal_uno.isdead?
# p animal_uno.name
# p animal_uno.age
# p animal_uno.color
# p Animal.last_name
