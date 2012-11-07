class Bee
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def to_json(*a)
    {
      "name"=> @name
    }.to_json(*a)
  end

end
