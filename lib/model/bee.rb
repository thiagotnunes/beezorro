require 'active_support'

class Bee
  include ActiveSupport::JSON

  attr_accessor :name, :combs, :relations

end
