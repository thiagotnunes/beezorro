class BeeController
  def initialize
    @combController = CombController.new
  end

  def bees
    @bee = Bee.new
    @bee.name = "Filipe"
    @bee.combs = @combController.combs
    @bee1 = Bee.new
    @bee1.name = "Nunes"
    @bee1.combs = @combController.combs.first
    @bee2 = Bee.new
    @bee2.name = "Jonny"
    return [ @bee, @bee1, @bee2 ]
  end
  
end

