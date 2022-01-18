def array_to_hash(array)
  new_hash = {}

  # Opción I
  # if block_given?
  #   array.each_with_index do |club, index|
  #     new_hash["#{yield}#{index}"] = club
  #   end
  # else
  #   array.each_with_index do |club, index|
  #     new_hash[index.to_s] = club
  #   end
  # end

  # Opción II
  array.each_with_index do |club, index|
    if block_given?
      new_hash["#{yield}#{index}"] = club
    else
      new_hash[index.to_s] = club
    end
  end

  return new_hash
end
