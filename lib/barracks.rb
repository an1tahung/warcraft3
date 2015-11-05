
class Barracks

  attr_reader :gold, :food 

  def initialize(gold = 1000, food = 80)
    @gold = gold
    @food = food

  end

  def can_train_footman?

    food > 2 && gold > 135 

  end 
          

  def train_footman

    if can_train_footman? 
      @gold -= 135
      @food -= 2 
      Footman.new 
    else
      nil  
    end
  end


   def can_train_peasant?

    food > 5 && gold > 90

  end 


  def train_peasant

    if can_train_peasant?
      @gold -= 90
      @food -= 5
      Peasant.new
    else
      nil
    end
  end



end
