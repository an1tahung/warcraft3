require_relative 'spec_helper'

describe Barracks do 

  before :each do 
    @barracks = Barracks.new
  end

  describe '#new' do
    it 'will have 500 HP by default' do
      expect(@barracks.health_points).to eq(500)
    end 
  end

  describe '#damage' do
    it 'will reduce the HP by attack_power specified' do
      @barracks.damage(20)
      expect(@barracks.health_points).to eq(480)
    end 
  end

end

describe Footman do
  before :each do
    @footman = Footman.new
  end

  describe '#attack!' do
    it 'will do half its AP if enemy is a Barrack' do
      @enemy = Barracks.new
      @footman.attack!(@enemy)
      expect(@enemy.health_points).to eq(495)
    end
  end

end
