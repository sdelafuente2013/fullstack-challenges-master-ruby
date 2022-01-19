class User
  def initialize(name, age, experience, email)
    @name = name
    @age = age
    @experience = experience
    @email = email
  end

  def experience_method
    puts "Buenas tardes #{@name}, segun nuestros registros usted tiene +#{@experience} años de experiencia en programacion"
  end
end
