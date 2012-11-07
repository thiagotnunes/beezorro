require 'representable/json'

class Bee
  include Representable::JSON

  attr_accessor :name, :url

  property :name
  property :url

end
