# RELEASE 1

def week_days
	puts "Today is Friday!"
	yield("Thursday", "Wednesday", "Tuesday")
end

week_days { |day1, day2, day3| puts "The last three days were: #{day1}, #{day2}, and #{day3}!" }

###################

=begin 
Demonstrate that you can iterate through each one using 
.each, and then using .map! (modifying the data in some 
way). Note that you can't call .map! on a hash, so you 
can skip that (.map returns an array, so a destructive 
map method is logically impossible on a hash). Print the 
data structures before and after each call to demonstrate 
whether they have been modified or not.
=end 

# RELEASE 1: ARRAY.EACH
sbux_coffee = ["italian", "sumatra", "french", "verona", "komodo", "espresso", "gold coast"]
sbux_coffee_capitalize = []

p sbux_coffee

sbux_coffee.each do |coffee| 
	sbux_coffee_capitalize << coffee.capitalize
end 

puts "Varieties of dark roasts available at Starbucks include:"
p sbux_coffee_capitalize

# RELEASE 1: ARRAY.MAP!

p sbux_coffee 

sbux_coffee.map! do |coffee|
    coffee.upcase
end 

p sbux_coffee



# RELEASE 1: HASH

sharks = {
	shark1: "great white",
	shark2: "hammerhead",
	shark3: "tiger",
	shark4: "bull",
	shark5: "basking",
	shark6: "dogfish",
	shark7: "megalodon"
}