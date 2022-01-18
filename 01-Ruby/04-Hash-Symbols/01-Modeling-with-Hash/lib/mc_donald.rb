def poor_calories_counter(burger, side, beverage)
  # TODO: return number of calories for this mcDonald order
  return CALORIES[burger] + CALORIES[side] + CALORIES[beverage]
end

CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Big Mac" =>	540,
  "McChicken" => 350,
  "French Fries" =>	230,
  "Salad" => 15,
  "Coca Cola" => 150,
  "Sprite" => 150
}
