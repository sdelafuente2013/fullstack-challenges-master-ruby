require_relative "compute_name"

# TODO: ask for the first name
# TODO: ask for the middle name
# TODO: ask for the last name
# TODO: Print a greeting to the user with the full name concatenated,
#       something like "Hello, Boris Paillard"

puts "Ingrese su nombre:"
first_name = gets.chomp.capitalize

puts "Ingrese su segundo nombre:"
middle_name = gets.chomp.capitalize

puts "Ingrese su apellido:"
last_name = gets.chomp.capitalize

puts "Hello #{compute_name(first_name, middle_name, last_name)}!"
