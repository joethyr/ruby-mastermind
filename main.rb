# frozen_string_literal: true

# responsible for running the game program.

require_relative 'game'
require_relative 'computer_player'
require_relative 'human_player'

play = Game.new( codemaker: ComputerPlayer.new("HAL"),
      codebreaker: HumanPlayer.new("Joe") )
