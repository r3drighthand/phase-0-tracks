# SANTA

class Santa

attr_accessor :gender, :ethnicity

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
# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("cononut")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", 
	"gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", 
	"prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
	santas << Santa.new(example_genders[i], example_ethnicities[i])
	puts "There are now #{santas.length} Santas in the array!"
end

p santas