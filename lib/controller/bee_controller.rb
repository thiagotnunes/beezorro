class BeeController
  def bees
    @bee = Bee.new
    @bee.url = "google.com"
    @bee.name = "Google"
    @bee1 = Bee.new
    @bee1.url = "github.com"
    @bee1.name = "Github"
    return [ @bee, @bee1]
  end
  
end

