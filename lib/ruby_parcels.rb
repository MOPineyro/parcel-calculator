class Parcels

  def initialize(length,width,height,weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  def length
    @length
  end

  def width
    @width
  end

  def height
    @height
  end

  def weight
    @weight
  end

  def volume
    @length * @width * @height
  end

  def cost_to_ship
    standard_rate = 5
    cost_per_lb = (@weight/0.5 + self.volume/0.5)/10
    shipping_cost = standard_rate + cost_per_lb
    shipping_cost.round(2)
  end

end


