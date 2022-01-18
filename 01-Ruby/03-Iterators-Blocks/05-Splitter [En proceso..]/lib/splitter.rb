def size_splitter(array, size)
  new_array = []
  array.chars.each_slice(size) do |num|
    if block_given?
      new_array.push(yield)
    else
      new_array.push(num)
    end
  end
  return new_array
end

def block_splitter(array)
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
end
