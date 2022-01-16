def colorful?(number)
  # TODO: return true if the number is colorful, false otherwise
  new_array = number.to_s.chars.map do |num|
    num.to_i
  end

  case new_array.length
  when 2
    new_array << (new_array[0] * new_array[1])
  when 3
    new_array << (new_array[0] * new_array[1])
    new_array << (new_array[1] * new_array[2])
    new_array << (new_array[0] * new_array[1] * new_array[2])
  end

  if (new_array.length - new_array.uniq.length).zero?
    return true
  else
    return false
  end
end
