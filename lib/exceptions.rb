class InvalidDataTypeForPriceError < StandardError
  def to_s
    "The price must be a number."
  end
end

class InvalidDataTypeForCart < StandardError
  def to_s
    "Only valid items may be added to the cart."
  end
end
