# RELEASE 1

def week_days
	puts "Today is Friday!"
	yield("Thursday", "Wednesday", "Tuesday")
end

week_days { |day1, day2, day3| puts "The last three days were: #{day1}, #{day2}, and #{day3}!" }

###################

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

# RELEASE 1: HASH.EACH

sharks = {
	shark1: "great white",
	shark2: "hammerhead",
	shark3: "tiger",
	shark4: "bull",
	shark5: "basking",
	shark6: "dogfish",
	shark7: "megalodon"
}

p sharks 

sharks.each do |shark_num, species|
	puts "#{shark_num} is the #{species.capitalize}"
end 

p sharks

######################

# RELEASE 2: ARRAY

# DELETE_IF METHOD

dogs = ["dachshund", "schnauzer", "poodle", "chow chow", "mastiff"]

# Method checks if string length is less than specified and then deletes
# dogs.delete_if {|dog| dog.length < 7 }
def length(x)
    x.delete_if {|x| x.length < 7 }
end

p length(dogs)

# KEEP_IF METHOD

# Method checks whether string contains any of the specified letters
# dogs.keep_if {|dog| dog =~ /[chow]/ }
def contains(x)
    x.keep_if {|x| x =~ /[chow]/ }
end

p dogs

p contains(dogs)

# FIRST METHOD

# Method checks which filter satisfies the condition of the data structure
def satisfies(x)
  x.first(2)
end

p satisfies(dogs)

# DROP_WHILE METHOD

animals = ["wolf", "raven", "lion", "otter", "elephant", "hedgehog"]

def drop(x)
	x.drop_while {|x| x.length < 5 }
end

p animals

p drop(animals)

# RELEASE 2: HASH

hogwarts = {
  gryffindor: "lion",
  ravenclaw: "eagle",
  hufflepuff: "badger",
  slytherin: "snake"
}

# DELETE_IF METHOD

# hogwarts.delete_if {|key, value| value.length <= 4 }   

def letter_length(x)
	x.delete_if {|house, animal| animal.length <= 4 } 
end

p hogwarts
p letter_length(hogwarts) 

# KEEP_IF METHOD

# Method to check whether hash contains certain specified letters
def contains(x)
	x.keep_if {|house, animal| animal =~ /[g]/ }
end

p hogwarts
p contains(hogwarts)

# REJECT METHOD

# Method checks what filter satisfies the condition of the data structure
def filter(x)
	x.reject {|house, animal| animal.length <= 4}
end

p hogwarts
p filter(hogwarts)

# DROP_WHILE METHOD

colors = {
    red: 1,
    orange: 2,
    yellow: 3,
    green: 4, 
    blue: 5,
    indigo: 6,
    violet: 7
}

# Method works on hash if iterating over integers, not strings.
def drop_method(x)
	x.drop_while {|color, number| number < 5}
end 

p drop_method(colors)




