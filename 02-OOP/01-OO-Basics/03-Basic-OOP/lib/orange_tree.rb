class OrangeTree
  # Se debe poder saber la edad del árbol.
  # Se debe poder medir la altura del árbol.
  # Se debe poder saber cuántas frutas quedan colgando del árbol.
  attr_reader :age, :height, :fruits

  def initialize
    @age = 0
    @height = 0
    @fruits = 0
    @dead = false
  end

  def one_year_passes!
    unless @death
      # Cada año, el árbol debe envejecer 1 año.
      @age += 1
      # Al final del año las naranjas que no se recogieron caerán del árbol.
      @fruits = 0
      # Un árbol de naranja crece 1 metro por año hasta los 10 años. Luego deja de crecer.
      @height += 1 if @age <= 10

      # Un árbol de naranja da 100 frutas al año a partir de los 5 años.
      @fruits = 100 if @age > 5 && @age < 10
      # El árbol da 200 frutas al año a partir de los 10 años.
      @fruits = 200 if @age >= 10 && @age < 15
      # El árbol deja de dar frutas cuando llega a los 15 años.
      @fruits = 0 if @age >= 15

      # El árbol de naranja **no puede** morir hasta alcanzar la edad de 50 años.
      @dead = false if @age <= 50
      # Luego de los 50 años, la probabilidad de que el árbol muera aumenta cada año.
      @dead = [true, false].sample if @age > 50
      # Ningún árbol puede vivir más de 100 años.
      @dead = true if @age >= 100
    end
  end

  # Se debe poder seleccionar **una sola fruta** del árbol al llamar al método de instancia `pick_a_fruit!` en el árbol
  def pick_a_fruit!
    unless @fruits.zero?
      @fruits -= 1
      return 1
    end
  end

  # Se debe poder saber si el árbol ha muerto utilizando el método de instancia `#dead?`
  def dead?
    return @dead
  end
end
