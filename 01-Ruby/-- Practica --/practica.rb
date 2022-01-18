# def array_to_hash(array)
#   new_array = []
#   array.each_with_index do |element, value|
#     new_array << element
#   end
#   return new_array
# end

# HASH
# hash = {
#   name: "Santi",
#   age: 25,
#   date_of_birth: 1996,
#   place_of_birth: "Argentina"
# }

# ARRAY
name_clubs = ["River Plate", "Racing", "San Lorenzo"]
new_hash = {}

name_clubs.each_with_index do |club, index|
  new_hash[index] = club
end

p "#{new_hash.keys[0]} = #{new_hash.values[0]}"
