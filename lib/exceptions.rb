# exceptions.rb
# By Luke A Chase
# chase.luke.a@gmail.com
# Copyright 2015

class InvalidDataTypeForCartError < StandardError
  def to_s
    "Only valid items may be added to the cart."
  end
end
