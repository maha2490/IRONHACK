#app
require_relative("lib/car.rb")
require_relative("lib/boat.rb")
require_relative("lib/plane.rb")


mini = Car.new
seabreeze = Boat.new
skyhawk = Plane.new

vehicles = [mini, seabreeze, skyhawk]

#wheel counter
vehicles.each do |vehicle|
	puts vehicle.wheels
end

#noise printer
vehicles.each do |vehicle|
	puts vehicle.noise
end 