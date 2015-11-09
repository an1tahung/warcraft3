require_relative 'spec_helper'

#Enhancement 3

# A dead unit cannot attack another unit. Conversely, an alive unit will also not attack another unit that is already dead.

describe Unit do 
  before :each do 
    @enemy = Unit.new(50,20)
    @footman = Footman.new
  end

  describe '#attack!' do 

    it 'should raise an exception if enemy unit is dead' do
      allow(@enemy).to receive(:dead?).and_return(true)
      expect{@footman.attack!(@enemy)}.to raise_error(Unit::DeadError, "Attacking a dead person is not nice!")
    end

    it 'should raise an exception if your unit is dead' do
      allow(@footman).to receive(:dead?).and_return(true)
      expect{@footman.attack!(@enemy)}.to raise_error(Unit::DeadError, "You're dead!")
    end


  end
  
end