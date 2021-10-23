# frozen_string_literal: true

# responsible for the all functionality for human player's role as code breaker.
class HumanCodeBreaker
  def initialize
    computer_code = [rand(1..6), rand(1..6), rand(1..6), rand(1..6)]
    turn_phase
  end

  def turn_phase
    puts "turn 1"
    print "Please enter the 4 digit code:\n>"
    input_code
  end

  def input_code
    input = gets.chomp
    # check code and see if valid (using correct numbers and quantity)
    return input if input.match(/^[1-6]{4}$/)

    print "Invalid input.\nTry again.\n>"
    turn_phase
  end
end


# When user inputs code
#  set user input to usercode<=
# # Computer compares user usercode<= with codeset<=
# player_turns = 12
# untill player_turns < 1
#   usercode<= split up and mapped into Array
#   if usercode.join == codeset.join
#     puts "You Win! Play again?"
#     run_game_again?
#   elsif for each usercode value included in codeset
#     puts "O for digit is in code but in wrong spot"
#   else for each usercode value in corrrect position in codeset
#     puts "X for digit is in code AND in correct spot"
#   end
#   player_turn -= 1
# end
