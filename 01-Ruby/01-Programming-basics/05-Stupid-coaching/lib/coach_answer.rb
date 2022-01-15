def coach_answer(your_message)
  # TODO: return coach answer to your_message
  return "" if your_message == "I am going to work right now!"
  return "I don't care, get dressed and go to work!" if your_message.chars.last == "!"
  return "Silly question, get dressed and go to work!" if your_message.chars.last == "?"
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  return "" if your_message == "I am going to work right now!".upcase || your_message == "I am going to work right now!"

  if your_message == your_message.upcase
    if your_message.chars.last == "!"
      return "I can feel your motivation! I don't care, get dressed and go to work!"
    else
      return "I can feel your motivation! Silly question, get dressed and go to work!"
    end
  end

  return "I don't care, get dressed and go to work!" if your_message.chars.last == "!"
  return "Silly question, get dressed and go to work!" if your_message.chars.last == "?"
end
