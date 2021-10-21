# frozen_string_literal: true

# responsible for maintaining all dialogue in the game.
module GameDialogue

  def introduction
    puts "Lets play a game of Mastermind!"
    puts "#{human.name}, will you play as the codemaker or the codebreaker?"
    print "Enter 1 for codemaker or 2 for codebreaker:\n>"
  end
end
