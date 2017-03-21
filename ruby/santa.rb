# SANTA

class Santa


	# Santa needs state:
	# gender = string
	# ethnicity = string
	# reindeer_ranking = array (not initialized)
	# age = defaults to 0

	def initialize(gender, ethnicity)
		puts "Initializing Santa sequence..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
			"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 

	def eat_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end 

end

# DRIVER CODE
santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("cononut")
