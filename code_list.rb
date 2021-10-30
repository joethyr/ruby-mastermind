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

end
