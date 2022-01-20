require_relative "animal"

class Cow < Animal
  def talk
    "moo"
  end

  def feed!
    @energy += 1
    @milk += 2
  end
end
