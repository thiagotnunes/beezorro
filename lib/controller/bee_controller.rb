class BeeController
  def bees
    @bee = Bee.new('name')
    return  [ @bee ]
  end
end

