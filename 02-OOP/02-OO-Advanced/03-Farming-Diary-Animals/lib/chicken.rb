require_relative "animal"

class Chicken < Animal
  attr_reader :eggs

  def initialize(gender)
    super()
    @eggs = 0
    @gender = gender
  end

  def feed!
    super()
    @gender == "male" ? @eggs += 0 : @eggs += 2
  end

  def talk
    @gender == "male" ? "cock-a-doodle-doo" : "cluck cluck"
  end
end
