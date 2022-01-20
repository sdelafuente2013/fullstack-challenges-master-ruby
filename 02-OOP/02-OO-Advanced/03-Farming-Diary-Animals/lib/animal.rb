class Animal
  attr_reader :milk, :eggs

  def initialize
    @energy = 0
    @milk = 0
    @eggs = 0
  end

  def feed!
    @energy += 1
  end
end
