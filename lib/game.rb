# frozen_string_literal: true

class Game
  DAMAGE = 10

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack
    @player2.lose_hp
  end
end
