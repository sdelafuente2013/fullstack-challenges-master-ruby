require_relative "animal"

class Chicken < Animal
  def initialize(gender)
    # super (energy, eggs)
    @energy = 0
    @eggs = 0
    @gender = gender
  end

  def feed!
    @energy += 1
    @gender == "male" ? @eggs += 0 : @eggs += 2
  end

  def talk
    @gender == "male" ? "cock-a-doodle-doo" : "cluck cluck"
  end
end
