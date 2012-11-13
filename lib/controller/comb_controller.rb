class CombController
  def combs
    @comb = Comb.new
    @comb.name = "Github"
    @comb.url = "http://github.com"
    @comb1 = Comb.new
    @comb1.name = "JSFiddle"
    @comb1.url = "http://jsfiddle.net"

    return [ @comb, @comb1 ]
  end
  
end


