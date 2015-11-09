# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit 

  def initialize

    super(60,10)
  end

  def attack!(enemy)
    can_attack?(enemy)

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
