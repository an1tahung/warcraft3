
class Unit 

  class DeadError < StandardError
  end

  attr_reader :attack_power, :health_points

  def initialize(health_points, attack_power)

    @health_points = health_points
    @attack_power = attack_power  

  end 


  def attack!(enemy)

    can_attack?(enemy)

    enemy.damage(@attack_power)

  end


  def damage(amount)

     @health_points -= amount

  end

  def dead?

    health_points <= 0

  end

  def can_attack?(enemy)

    raise DeadError, "You're dead!" if self.dead? 

    raise DeadError, "Attacking a dead person is not nice!" if (!enemy.is_a?(Barracks) && enemy.dead?) 

  end
    
 
end