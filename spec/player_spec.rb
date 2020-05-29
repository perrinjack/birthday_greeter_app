# frozen_string_literal: true

require_relative '../lib/player.rb'

describe Player do
  describe '#name' do
    let(:subject) { Player.new('name1') }
    it 'returns @name' do
      expect(subject.name).to eq('name1')
    end
  end
end
