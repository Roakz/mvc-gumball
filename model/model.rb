require_relative '../view/view'

class StorageBubble

    attr_accessor :quantity

  def initialize
    @quantity = 0
    @max = 200
    @min = 0
 
  end

  def remove_gumball(order)
    
    @quantity -= order

  end

  def top_up(order)

  @quantity += order

  end

end
