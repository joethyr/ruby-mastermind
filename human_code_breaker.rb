# frozen_string_literal: true

# responsible for game functionality of human player's role as code breaker.
class HumanCodeBreaker
  require_relative "game_logic"

  include GameLogic
  attr_reader :computer_code

  def initialize
    @computer_code = 4.times.map { rand(1..6) }
    puts "the computer_code is #{computer_code}"
    play_round
  end

  def play_round
    turn = 1
    until turn == 13
      single_turn(turn)
      turn += 1
    end
    player_lost(computer_code.join(''))
  end

  def single_turn(num)
    puts "TURN ##{num}\nPlease enter the 4 digit code:\n"
    print ">"
    guess = input_guess
    check_guess(guess, computer_code)
  end

  def input_guess
    input = gets.chomp
    # check code and see if valid (using correct numbers and quantity)
    return input.split(//).map(&:to_i) if input.match(/^[1-6]{4}$/)

    print "Invalid input.\nTry again.\n>"
    input_guess
  end
end
