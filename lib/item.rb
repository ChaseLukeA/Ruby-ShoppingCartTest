# item.rb
# By Luke A Chase
# chase.luke.a@gmail.com
# Copyright 2015

class Item

  attr_accessor :name, :price

  def initialize(default_name="", default_price=0)
    @name = default_name
    @price = default_price
  end

end
