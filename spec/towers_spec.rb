require 'towers'
require 'rspec'

describe TowersOfHanoi do
  subject(:toh) { TowersOfHanoi.new }
    describe '#initialize' do
      it 'initializes discs on one side' do
        expect(toh.towers).to eq([[3, 2, 1], [], []])
      end
    end

    describe '#move' do
      subject(:game) { TowersOfHanoi.new([[3, 1], [2], []]) }
      it "smaller discs can move on to larger discs" do
        game.move(0, 1)
        expect(game.towers).to eq([[3], [2, 1], []])
      end

      it "doesn't move larger discs on smaller discs" do
        game.move(0, 1)
        expect(game.towers).not_to eq([[3], [1, 2], []])
      end

      it "moves discs to empty stacks" do
        game.move(0, 2)
        expect(game.towers).to eq([[3], [2], [1]])
      end
    end

    describe '#won?' do
      subject(:game) {TowersOfHanoi.new([[1], [3, 2,], []])}
      it "game ends when all discs at stack 2 or 3" do
        game.move(0, 1)
        expect(game.won?).to be true
      end
    end

end
