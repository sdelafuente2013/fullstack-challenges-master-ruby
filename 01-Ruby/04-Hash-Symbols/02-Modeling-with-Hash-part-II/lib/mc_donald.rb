DISHES_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Big Mac" => 540,
  "McChicken" => 350,
  "French Fries" => 230,
  "Salad" => 15,
  "Coca Cola" => 150,
  "Sprite" => 150
}

FOODS = {
  "Happy Meal" => ["Cheese Burger", "French Fries", "Coca Cola"],
  "Best Of Big Mac" => ["Big Mac", "French Fries", "Coca Cola"],
  "Best Of McChicken"	=> ["McChicken", "Salad", "Sprite"]
}

def poor_calories_counter(burger, side, beverage)
  DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end

def calories_counter(orders)
  # TODO: return number of calories for a less constrained order
  total_calories = 0
  orders.each do |plat|
    if DISHES_CALORIES.include?(plat)
      total_calories += DISHES_CALORIES[plat]
    else
      total_calories += poor_calories_counter(FOODS[plat][0], FOODS[plat][1], FOODS[plat][2])
    end
  end
  return total_calories
end
