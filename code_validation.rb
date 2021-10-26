module CodeValidation
  def exact_code(guess, code)
    exact = 0
    code.each_with_index do |i, j|
      next unless i == guess[j]
      exact += 1
      code[j] = 'X'
      guess[j] = 'X'
    end
    exact.times { print 'X'}
  end

  def similar_code(guess, code)
    same = 0
    guess.each_index do |i|
      next unless guess[i] != 'X' && code.include?(guess[i])
      same += 1
      remove = code.find_index(guess[i])
      code[remove] = nil
      guess[i] = 'O'
    end
    same.times { print 'O' }
  end

  def render_feedback(guess, code)
    temp_guess = guess.dup
    temp_code = code.dup
    print "feedback: "
    exact_code(temp_guess, temp_code)
    similar_code(temp_guess, temp_code)
    puts ""
  end

  def check_guess(guess, code)
    return player_won if guess == code

    render_feedback(guess, code)
  end

  def player_won
    puts "You cracked the code!"
    exit
  end
end
