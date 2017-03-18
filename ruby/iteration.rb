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

# method sees what filter satisfies the condition of the data structure
def satisfies(x)
  x.first(2)
end

p satisfies(sports)

 numbers = [1,2,10,15,25,66]

def drop(x)
  x.drop_while {|x| x < 15 }
end

p drop(numbers)

# Hash

emotion = {
  "emotion_1" => 'angry', 
  "emotion_2" => 'sad', 
  "emotion_3" => 'happy', 
  "emotion_4" => 'estatic', 
  "emotion_5" => 'livid'
  
}

#emotion.delete_if {|key, value| value.length <= 4 }   

def letters(x)
  x.delete_if {|key, value| value.length <= 4 } 
end

p letters(emotion) 


# method to see if it contains certain specified letters

def contain(x)
x.keep_if {|key, value| value =~ /[pe]/ }
end

p contain(emotion)

# method sees what filter satisfies the condition of the data structure

def filter(x)
x.reject {|emotion, value| value.length <= 4}
end

filter(emotion)

p filter(emotion)

numbers = {
  "Bob" => 1,
  "Suzie" => 2,
  "Sally" => 3,
  "Rob" => 4,
  "Dod" => 5,
  "Tom" => 6
}

def num(x)
  x.drop_while {|numbers, quantity| quantity < 4}
end

p num(numbers)
numbers.drop_while {|numbers, quantity| quantity < 4}


















# RELEASE 2: HASH






