# PUPPY METHODS

class Puppy

	# fetch toy method
	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	# speak method
	def speak(x)
		puts "Woof! " * x
	end 

	# roll over method
	def roll_over
		puts "*rolls over*"
	end 

	# dog year conversion method
	def dog_years(x)
		dog_age = x * 7
		puts "I am (secretly) #{dog_age} years old."
	end	

	# attack method
	def attack
		puts "Grrr!"
	end

end



# DRIVER CODE

# initialize instance of Puppy
ruthie = Puppy.new
ruthie.fetch("ball")
ruthie.speak(5)
ruthie.roll_over
ruthie.dog_years(12)
ruthie.attack