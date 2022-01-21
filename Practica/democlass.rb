module DemoModule
  class DemoClass
    def self.introduce
      # TODO: choose return between 1, 2, 3
      1
    end

    def introduce
      # TODO: choose return between 1, 2, 3
      2
    end
  end

  def self.introduce
    # TODO: choose return between 1, 2, 3
    3
  end
end

def winning_combination
  first = DemoModule.introduce
  p first
  second = DemoModule::DemoClass.introduce
  p second
  third = DemoModule::DemoClass.new.introduce
  p third
  # Next line should return true!
  [first, second, third] == [1, 2, 3]
end

p winning_combination


# module DemoModule
#   class DemoClass
#     def self.introduce
#       2
#     end

#     def introduce
#       3
#     end
#   end

#   def self.introduce
#     1
#   end
# end

# def winning_combination?
#   first = DemoModule.introduce
#   second = DemoModule::DemoClass.introduce
#   third = DemoModule::DemoClass.new.introduce
#   # Next line should return true!
#   [first, second, third] == [1, 2, 3]
# end

# p winning_combination?
