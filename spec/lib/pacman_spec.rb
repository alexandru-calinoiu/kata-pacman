require 'spec_helper'
require 'pacman'
require 'direction'

describe Pacman do
  subject { Pacman.new(Direction::NORTH) }

  its(:direction) { should == Direction::NORTH }
end