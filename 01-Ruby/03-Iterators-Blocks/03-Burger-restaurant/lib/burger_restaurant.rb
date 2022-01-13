def burger(patty, sauce, topping)
  # TODO: code the `burger` method3
  if block_given?
    return ["bread", yield(patty), sauce, topping, "bread"]
  else
    return ["bread", patty, sauce, topping, "bread"]
  end
end
