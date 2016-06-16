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
		@items.each do |single_item2|
		total_bill += single_item2.price
		end
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

class Fruit < Item #discount: weekdays, NO weekends, YES 10%
  def initialize
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