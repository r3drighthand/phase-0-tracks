class Santa 
    
    attr_reader :ethnicity
    attr_accessor :age, :gender, :reindeer_ranking
    
    def initialize(gender, ethnicity)
        puts "Initializing santa sequence ..."
        @gender = gender
        @ethnicity = ethnicity
        @age = 0 
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    end
    
    def eats_cookie(cookie)
        puts "That was a good #{cookie} cookie!"
    end 
    
    def speak
        puts "Ho ho ho! Haaaaappy holidays!"
    end 
    
    def celebrate_birthday
        @age += 1 
    end 
    
    def get_mad_at(bad_reindeer)
        @reindeer_ranking.delete(bad_reindeer)
        @reindeer_ranking.push(bad_reindeer) # changed from << bad_reindeer
    end 
    
    def gender_reassignment=(new_gender)
        @gender = new_gender
    end 
    
end 


#DRIVER CODE

# caitlin = Santa.new("female", "white")
# caitlin.eats_cookie("snickerdoodle")
# caitlin.speak
# p caitlin.celebrate_birthday
# p caitlin.get_mad_at("Blitzen")
# p caitlin.get_mad_at("Dasher")


santarray = []
gender = ["female", "male", "nonbinary", "gender neutral", "trans male", "trans female", "gender fluid"]
ethnicity = ["Chinese", "Pacific Islander", "Welsh", "French", "Russian", "Egyptian", "Brazilian"]
# gender.length.times do |i|
#    santarray << Santa.new(gender[i], ethnicity[i])
# end 

50.times do |i|
	santarray << Santa.new(gender[i], ethnicity[i])
	puts "There are now #{santarray.length} Santas in the array!"
end

# Making sure 50 santas were added to array
# p santarray.length

puts santarray



# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", 
#	"gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", 
#	"prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#	santas << Santa.new(example_genders[i], example_ethnicities[i])
#	puts "There are now #{santas.length} Santas in the array!"
# end
# p santas