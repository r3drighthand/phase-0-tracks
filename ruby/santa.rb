# SANTA

class Santa



	def initialize
		puts "Initializing Santa sequence..."
		#attr gender = string
		#attr ethnicity = string
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end 

end

# DRIVER CODE
santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("liver cookie")
