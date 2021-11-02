class CodeList

  def initialize
    @choices = [ 1, 2, 3, 4, 5, 6 ]
    all_possible_codes
  end

  def all_possible_codes
    @possibilities = @choices.repeated_permutation(4).to_a
    @possibilities.each_with_index do |choice, index|
      @possibilities[index] = "#{choice[0]}#{choice[1]}#{choice[2]}#{choice[3]}"
    end
  end

  def update_possible_codes(black, white, guess)
    new_possibilities = []
    saved_guess = guess.to_sym
    @possibilities.each do |possible_guess|
      temp_scores = compare_possible_guess_to_current_guess(saved_guess, possible_guess)
      blackcounter, whitecounter = temp_scores.first, temp_scores.last
      if possibility_has_correct_number_of_colors?(black, blackcounter, white, whitecounter)
        new_possibilities << possible_guess
      end
    end
    @possibilities = new_possibilities
  end
end
