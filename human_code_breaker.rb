# frozen_string_literal: true

# responsible for the all functionality for human player's role as code breaker.
class HumanCodeBreaker
  require_relative "code_validation"

  include CodeValidation
  attr_reader :computer_code

  def initialize
    @computer_code = [rand(1..6), rand(1..6), rand(1..6), rand(1..6)]
    puts "the computer_code is #{computer_code}"
    turn_phase
  end

  def turn_phase
    turns = 1
    until turns == 13
      puts "turn #{turns}"
      print "Please enter the 4 digit code:\n>"
      guess = input_guess
      check_guess(guess, computer_code)
      puts " this is my guess #{guess}"
      turns += 1
    end
  end

  def input_guess
    input = gets.chomp
    # check code and see if valid (using correct numbers and quantity)
    return input.split(//).map(&:to_i) if input.match(/^[1-6]{4}$/)

    print "Invalid input.\nTry again.\n>"
    input_guess
  end
end
