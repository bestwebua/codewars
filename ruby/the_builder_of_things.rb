=begin
The builder of things by Vladislav Trotsenko.

=end

class Thing
  
  attr_reader: name

  def initialize(name)
    @name = name
  end

  
end


jane = Thing.new('Jane')

jane.name