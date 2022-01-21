# DO NOT remove the two lines below, needed for display purposes
require_relative "../spec/helper/board"

require_relative "corn"
require_relative "rice"


puts "\n\n📝 Day One: Corn"
# 1. Instantiate a corn crop
corn_uno = Corn.new
# 2. Water the corn crop
corn_uno.water!
# 3. Replace 'TODO' with the value of `grains` for your crop
puts "The corn crop produced #{corn_uno.grains} grains"
# 4. Replace 'TODO' with the state of the crop ('ripe' or 'not ripe')
puts "The corn crop is #{corn_uno.ripe? ? 'ripe' : 'not ripe'}"



puts "\n\n📝 Day Two: Rice"
# 1. Instantiate a rice crop
rice_uno = Rice.new
# 2. Water the rice crop
rice_uno.water!
# 3. Transplant the rice crop
rice_uno.transplant!
# 4. Replace 'TODO' with the value of `grains` for your crop
puts "The rice crop produced #{rice_uno.grains} grains"
# 5. Replace 'TODO' with the state of the crop ('ripe' or 'not ripe')
puts "The rice crop is #{rice_uno.ripe? ? 'ripe' : 'not ripe'}"


# DO NOT remove the two lines below, needed for display purposes
Board.new.display
