# cart.rb
# By Luke A Chase
# chase.luke.a@gmail.com
# Copyright 2015

class Cart

  attr_reader :items

  def initialize
    @contents = Array.new
  end

  def add_item(item)
    raise InvalidDataTypeForCartError unless item.is_a? Item

    @contents.each do |cart_item|
      if (cart_item[:item].name == item.name)
        #return here helped me exit method
        return cart_item[:quantity] = cart_item[:quantity] + 1
      end
    end

    # only runs if item not already in cart
    @contents << {item: item, quantity: 1}

  end

  def total
    @total = 0
    @contents.each do |cart_item|
      @total += (cart_item[:item].price * cart_item[:quantity])
    end
    return @total
  end

  def items
    @contents
  end

end
