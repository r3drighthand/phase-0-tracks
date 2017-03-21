# PUPPY METHODS

class Puppy

	# add initialize
	def initialize
		puts "Initializng new puppy instance ..."
	end 

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

	# boolean method
	def boolean(x)
		if x % 2 == 0
			puts "I am hungry!"
		else 
			puts "I am sleepy..."
		end 
	end 

end

# DRIVER CODE

# ruthie = Puppy.new
# ruthie.fetch("ball")
#ruthie.speak(5)
# ruthie.roll_over
# ruthie.dog_years(12)
# ruthie.attack
# ruthie.boolean(1)
# ruthie.boolean(2)


class Spider

	def initialize
		puts "Initialized new spider!"
	end 

	def species(varies)
    	puts "This spider is a(n) #{varies}."
    	return varies
 	end

	def jump(height, distance)
    	puts attack_range = height * distance
    	return attack_range
	end

	def bite(severity)
    	if severity == "mild"
    		puts "Walk it off!"
    	elsif severity == "bad"
    		puts "Get to a doctor!"
    	elsif severity == "nightmare"
    		puts "Call the coroner..."
    	else
    		puts "Maybe it was a scorpion?"
    	end
    return severity
  end

end 

# DRIVER CODE

caitlin = Spider.new
caitlin.species("orb weaver")
caitlin.jump(5, 10)
caitlin.bite("bad")
