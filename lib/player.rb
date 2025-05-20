class Player
  attr_accessor :marker, :name
  def initialize(name, marker)
    @name = name
    @marker = marker
  end
end