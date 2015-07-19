class Cart

  attr_reader items

  def initialize
    @contents = {}
  end

  def add_item(item)
    raise InvalidDataTypeForCartError unless item.is_a? Item
    if @contents.include?(item: item)
      puts "error, already there!"
    else
      @contents << {item: item, quantity: 1}
    end
  end

  def total
    total = 0
    @contents.each do |item|
      total += item(:price)
    end
  end

  def items
    @contents
  end

end
