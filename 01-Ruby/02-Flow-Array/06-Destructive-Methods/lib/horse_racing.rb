def horse_racing_format!(race_array)
  # TODO: modify the given array so that it is horse racing consistent. This method should return nil.
  array_descendant = race_array.sort! { |a, b| b <=> a }
  array_descendant_index = []
  array_descendant.each_with_index do |name, index|
    if array_descendant.first.to_i.instance_of?(Integer)
      array_descendant_index << "#{name}!"
    else
      array_descendant_index << "#{array_descendant.length - index}-#{name}!"
    end
  end
  return array_descendant_index

  # index = array_descendant.length + 1
  # return array_descendant.map! do |name_horse|
  #   index -= 1
  #   "#{index}-#{name_horse}!"
  # end
end
