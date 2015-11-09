class SeigeUnit < Unit

  attr_reader :gold, :food, :lumber

  def initialize
    super(400,50)

    @gold = 200
    @food = 3
    @lumber = 60
  end 

  def attack!(enemy)

    if enemy.class == SeigeUnit
      can_attack?(enemy)
      enemy.damage(@attack_power)
    elsif enemy.class == Barracks
      can_attack?(enemy)
      enemy.damage(@attack_power * 2)
    else
      return false   
    end   
  end
end 

