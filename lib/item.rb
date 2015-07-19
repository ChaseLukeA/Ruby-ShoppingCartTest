class Item

  attr_accessor :price, :name

  def initialize(default_price = 0, default_name = "")
    @price = default_price
    @name = default_name
  end

end
