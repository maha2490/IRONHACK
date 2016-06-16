class MilkShake
  attr_accessor :base_price, :order_ingredients
  def initialize
    @base_price = 3
    @order_ingredients = []    
  end
  def add_ingredient(ingredient)
    @order_ingredients.push(ingredient)
  end
  def price_of_milkshake
    total_price_of_milkshake = @base_price
  @order_ingredients.each do |ingredient|
        total_price_of_milkshake += ingredient.price
      end
    total_price_of_milkshake
  end
end  

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

#Shopping cart
class Shopping_cart
  def initialize
    @finished_shakes = []
  end
  def add_milkshake(milkshake)
    @finished_shakes.push(milkshake)
  end
  def checkout
    order_total = 0
    @finished_shakes.each do |shake|
    order_total += shake.price_of_milkshake
    end
  order_total
  end
end

nizars_milkshake = MilkShake.new
rachels_milkshake = MilkShake.new

banana = Ingredient.new("Banana", 2) 
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
fudge = Ingredient.new("Fudge" , 2)
sprinkles = Ingredient.new("Rainbow_sprinkles", 1)

nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
rachels_milkshake.add_ingredient(fudge)
rachels_milkshake.add_ingredient(sprinkles)


checkout1 = Shopping_cart.new
checkout1.add_milkshake(nizars_milkshake)
checkout1.checkout
checkout2 = Shopping_cart.new
checkout2.add_milkshake(rachels_milkshake)
checkout2.checkout

