class BeeController
  def initialize
    @combController = CombController.new
  end

  def bees
    stack_overflow = Comb.new
    stack_overflow.name = "stack overflow"
    stack_overflow.url = "https://www.stackoverflow.com/"
    coursera = Comb.new
    coursera.name = "coursera"
    coursera.url = "https://www.coursera.org/"

    @bee = Bee.new
    @bee.name = "Filipe"
    @bee.combs = @combController.combs
    @bee.combs << stack_overflow

    @bee1 = Bee.new
    @bee1.name = "Nunes"
    @bee1.combs = @combController.combs
    @bee1.combs << coursera

    @bee2 = Bee.new
    @bee2.name = "Jonny"
    @bee2.combs = [ coursera, stack_overflow ]

    @bee.relations = [ @bee1.name, @bee2.name ]
    @bee1.relations = [ @bee.name, @bee2.name ]
    @bee2.relations = [ @bee.name ]

    return [ @bee, @bee1, @bee2 ]
  end
  
end

