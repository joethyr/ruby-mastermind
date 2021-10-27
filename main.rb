# frozen_string_literal: true

# responsible for running the game program.

require_relative 'game'
require_relative 'computer_player'
require_relative 'human_player'
require_relative 'human_code_breaker'

mastermind = Game.new(
  computer: ComputerPlayer.new("HAL-9000"),
  human: HumanPlayer.new("HUMAN")
)
mastermind.start_game
