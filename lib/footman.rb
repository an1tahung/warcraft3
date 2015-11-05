# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit 

  def initialize

    super(60,10)


    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

  def attack!(enemy)
    if enemy.class == Barracks 
      if @attack_power.odd?
        enemy.damage((@attack_power+1)/2)
      else
        enemy.damage(@attack_power/2)
      end
    else
      enemy.damage(@attack_power)
    end

  end


end
