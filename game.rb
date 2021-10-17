# frozen_string_literal: true

# responsible for the game's functionality.
class Game
  attr_reader :codemaker, :codebreaker

  def initialize(options)
    @codemaker = options[:codemaker]
    @codebreaker = options[:codebreaker]
  end

  def defaults
    { codemaker: ComputerPlayer.new("HAL"),
      codebreaker: HumanPlayer.new("Joe") }
  end
end
