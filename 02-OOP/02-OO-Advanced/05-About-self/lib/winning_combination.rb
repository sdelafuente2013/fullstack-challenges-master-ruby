module DemoModule
  class DemoClass
    def self.introduce
      # TODO: choose return between 1, 2, 3
      3
    end

    def introduce
      # TODO: choose return between 1, 2, 3
      2
    end
  end

  def self.introduce
    # TODO: choose return between 1, 2, 3
    1
  end
end

def winning_combination?
  first = DemoModule.introduce
  second = DemoModule::DemoClass.new.introduce
  third = DemoModule::DemoClass.introduce
  # Next line should return true!
  [first, second, third] == [1, 2, 3]
end
