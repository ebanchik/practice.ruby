# #C1
# inventory = [{ item: "computer", color: "silver", release_year: 2023}, {item: "keyboard", type: "accessory", price: 99}, {item: "charger", power: "25V", price: 49}]

# #C2
# inventory = [{ item: "computer", color: "silver", price: 1999}, {item: "keyboard", color: "black", price: 99}, {item: "charger", color: "white", price: 49}]

# #C3
# inventory = [{ item: "computer", color: "silver", price: 1999}, {item: "keyboard", color: "black", price: 99}, {item: "charger", color: "white", price: 49}]


# class Items
#   attr_accessor :item, :color, :price
#   def initialize(item, color, price)
#     @item = item
#     @color = color
#     @price = price
#   end
# end

# inventory = Items.new("computer", "silver", 1999)
# p inventory.item
# p inventory.color
# p inventory.price
# inventory.price = 2200
# p inventory.price


class Items
  attr_accessor :item, :color, :price
  def initialize(input_items)
    @item = input_items[:item]
    @color = input_items[:color]
    @price = input_items[:price]
  end
end

inventory = Items.new(item: "computer", color: "silver", price: 1999)
p inventory.item
p inventory.color
p inventory.price
inventory.price = 2200
p inventory.price