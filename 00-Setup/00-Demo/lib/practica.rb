def full_name(firt_name, last_name)
  return "Bienvenido #{firt_name.capitalize} #{last_name.capitalize}"
end

p full_name(gets.chomp, gets.chomp)
