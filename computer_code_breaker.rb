# frozen_string_literal: true

# responsible for game functionality when computer is code breaker.
class ComputerCodeBreaker
  require_relative "game_logic"
  require_relative "code_list"

  include GameLogic
  attr_reader :human_code

  def initialize
    @human_code = set_code.chars.map(&:to_i)
    puts 'Ok, computer try to crack the code!'
    computer_start
    @mylambda = ->(i) { i.chars.map(&:to_i) }
  end

  def set_code
    print "Please create the 4-digit code:\n>"
    gets.chomp
  end

  def computer_start
    p guess = 2211.digits
    check_guess(guess, human_code)
  end


  def second_guess

  end
end
