require 'spec_helper'
require 'pacman'
require 'direction'
require 'grid'

describe Pacman do
  let(:pacman) { Pacman.new }

  describe "#position" do
    context 'when moving on a dot' do
      before { Grid.stub(:dot?).with(42, 42).and_return(true) }

      it 'will eat it' do
        pacman.should_receive(:eat).with(42, 42)
        pacman.tick(Direction::NORTH, 42, 43)
      end
    end

    context 'when moving on a enemy' do
      before { Grid.stub(:enemy?).with(42, 44).and_return(true) }

      it 'will die' do
        pacman.should_receive(:die)
        pacman.tick(Direction::SOUTH, 42, 43)
      end
    end
  end
end