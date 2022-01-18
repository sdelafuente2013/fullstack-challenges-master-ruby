def louchebemize(sentence)
  new_array = sentence.chars
  new_word = sentence
  new_array.each_with_index do |letra, index|
    letra.downcase!
    if letra.include?("a") || letra.include?("e") || letra.include?("i") || letra.include?("o") || letra.include?("u")
      new_word << new_word[index-1]
      new_word[index-1] = "l"
      new_word << "em"
      return new_word.downcase
    end
  end

end
