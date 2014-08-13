class Car
    def get_info()
		"I'm a car! I've driven #{@distance} miles and have #{@fuel} gallons of gas left"
	end

	def initialize()
		@fuel = 10
		@distance = 0
	end

	def drive(miles)
		if (@fuel - miles/20.0) >= 0
			@distance += miles
			@fuel -= miles/20.0
		else
			@distance += @fuel * 20.0
			@fuel = 0
			puts "Oh no! You ran out of gas!"
		end
	end

	def fuel_up()
		gallons_needed = 10.0 - @fuel
		puts "It will cost you $#{3.5 * gallons_needed} to fill up your tank back up."
		@fuel = 10.0
	end
end

car_a = Car.new()
car_b = Car.new()
car_a.drive(209)
car_a.fuel_up
puts car_a
