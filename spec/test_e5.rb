require_relative 'spec_helper'

describe SeigeUnit do

  before :each do
    @seige = SeigeUnit.new
    @footman = Footman.new
    @barracks = Barracks.new
  end

  describe '#attack!' do
    it "can only attack if the unit is Barracks or another Seige Unit" do
      expect(@seige.attack!(@footman)).to be_falsey
      expect(@seige.attack!(@seige)).to be_truthy
    end

    it "will double its attack power if the enemy is Barracks" do
      (@seige.attack!(@barracks))
      expect(@barracks.health_points).to eq(400)
    end
  end  
end