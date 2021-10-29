# frozen_string_literal: true

# responsible for game functionality when computer is code breaker.
class ComputerCodeBreaker
  require_relative "game_logic"

  include GameLogic

  def initialize
    @code = set_code
    puts 'Ok, computer try to crack the code!'
    computer_start
    @mylambda = ->(i) { i.chars.map(&:to_i) }
  end

  def set_code
    print "Please create the 4-digit code:\n>"
    gets.chomp(&@mylambda)
  end

  def computer_start
    guess = initial_guess(&@mylambda)
    puts guess
  end

  def initial_guess
    number = rand(1..6).to_s
    number * 4
  end
end
