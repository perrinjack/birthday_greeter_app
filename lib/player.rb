# frozen_string_literal: true

class Player
  attr_reader :name, :hp

  DEFAULT_HP = 50
  DAMAGE = 10

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def lose_hp
    @hp -= DAMAGE
  end
end
