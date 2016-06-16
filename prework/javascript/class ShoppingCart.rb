class ShoppingCart
	attr_accessor :items
	def initialize 
		@items = []
	end
	def add_item(single_item) #add items to array
		@items.push(single_item)
	end
	def order_total #iterate over array to calculate total cost
		total_bill = 0
		if @items.length >= 6
			@items.each do |single_item|
				total_bill += (single_item.price * 0.9)
			end
		else
			@items.each do |single_item|
			total_bill += single_item.price
			end
		end
		total_bill
	end
end

class Item
	def initialize(name, price)
		@name = name 
		@price = price
	end
	def price 
		@price
	end
end

class Houseware < Item #discount: if price > 100 5% discount
  def price
	if @price >= 100
		@price * 0.95
	else
		@price
	end
  end
end

class Fruit < Item #discount: weekdays, NO weekends, YES 10%
  def initialize(name, price)
  	@name = name
  	@price = price
  	@today = Time.now
  end
  def price
      if @today.sunday? == true || @today.saturday? == true
      	@price * 0.9 
      else	
      	@price
      end
  end
end

joshs_cart = ShoppingCart.new
banana = Fruit.new("banana", 10)
berries = Fruit.new("blue", 5)
orange_juice = Fruit.new("orange juice", 10)
rice = Item.new("rice", 1)
vacuum_cleaner = Houseware.new("vacuum", 150)
anchovies = Item.new("anchovies", 2)

joshs_cart.add_item(orange_juice)
joshs_cart.add_item(rice)
joshs_cart.add_item(anchovies)
joshs_cart.add_item(banana)
joshs_cart.add_item(vacuum_cleaner)
joshs_cart.add_item(berries)
joshs_cart.order_total