class BeeController
  def bees
    @bee = Bee.new
    @bee.name = "Filipe"
    @bee1 = Bee.new
    @bee1.name = "Nunes"
    @bee2 = Bee.new
    @bee2.name = "Jonny"
    return [ @bee, @bee1, @bee2 ]
  end
  
end

