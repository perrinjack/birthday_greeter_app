# frozen_string_literal: true

require 'game'
require 'player'
describe Game do
 let(:player1) {Player.new('A') }
  let(:player2) {Player.new('B')}
  let(:game) { Game.new(player1, player2) }
  
  it 'Changes player 2 HP by DAMAGE' do
    expect { game.attack }.to change{player2.hp}.by -Player::DAMAGE
  end
end
