# frozen_string_literal: true

require 'pry-byebug'
# require_relative 'game_dialogue'
# responsible for the setting up the game.
class Game
  # include GameDialogue
  attr_reader :human, :computer

  def initialize(options)
    @human = options[:human]
    @computer = options[:computer]
  end

  def introduction
    puts "Lets play a game of Mastermind!"
    puts "#{human.name}, will you play as the codemaker or the codebreaker?"
    print "Enter 1 for codemaker or 2 for codebreaker:\n>"
  end

  def start_game
    introduction
    setup
  end

# sets roles for the game
  def setup
    mode = select_mode
    code_maker if mode == 1
    code_breaker if mode == 2
  end

  def select_mode
    input = gets.chomp.to_i
    return input if (1..2).include?(input)

    print "Invalid input.\nTry again.\n>"
    select_mode
  end

  def code_maker
    puts "#{computer.name} will be the codebreaker.\n#{human.name} will be the codemaker."
    ComputerCodeBreaker.new
  end

  def code_breaker
    puts "#{human.name} will be the codebreaker.\n#{computer.name} will be the codemaker."
    HumanCodeBreaker.new
  end
end

