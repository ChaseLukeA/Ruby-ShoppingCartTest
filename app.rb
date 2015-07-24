# The Grand Ruby Shopping Experience
#
# app.rb
# By Luke A Chase
# chase.luke.a@gmail.com
# Copyright 2015

require_relative 'lib/cart'
require_relative 'lib/exceptions'
require_relative 'lib/item'
require_relative 'lib/utility'

# /---------------------------- DECLARATIONS ---------------------------------\
items = [
  {name: "Ring to Rule Them All", price: 999.99},
  {name: "Lightsaber", price: 299.99},
  {name: "Master Sword", price: 1499.99},
  {name: "Phason Suit", price: 479000.00},
  {name: "Racoon Hat", price: 59.99}
]

cart = Cart.new
continue = true
# \---------------------------------------------------------------------------/

puts ".-------------------------------------------------."
puts "|        The Grand Ruby Shopping Experience       |"
puts "|-------------------------------------------------|"
puts "|     Version 1.0 Copyright 2015 Luke A Chase     |"
puts "'-------------------------------------------------'\n"


while continue do

  puts "\nChoose an item to add to the shopping cart:\n"
  items.each_with_index do |item, index|
    printf("  %d) %s - $%.2f\n", (index + 1), item[:name], item[:price])
  end

  choice = prompt("Item #: ")
  while !(choice =~ /\A[1|2|3|4|5]\Z/) do
    choice = prompt("Please enter a valid item #: ")
  end
  choice = choice.to_i - 1

  cart.add_item(Item.new(items[choice][:name], items[choice][:price]))

  puts "\nYour cart currently contains:"
  cart.items.each do |current_item|
    printf("  %d - %s - $%.2f\n", current_item[:quantity], current_item[:item].name, current_item[:item].price)
  end
  puts "\n"

  continue = prompt("Do you want to add more items to your cart? ('y' or 'n'): ") =~ /\A[y|Y]\Z/

end


puts "\n---------------------------------------------------"
puts "\nTotal of all cart items:\n\n"

cart.items.each do |current_item|
  printf("  %s: $%.2f x (%d) = $%.2f\n", current_item[:item].name, current_item[:item].price, current_item[:quantity], (current_item[:quantity] * current_item[:item].price))
end
printf("\nGrand Total: $%.2f\n", cart.total)

puts "\n---------------------------------------------------\n"
