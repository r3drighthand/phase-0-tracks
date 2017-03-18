
# LOGIC

# 1: Swapping the first and last name.
# 2: Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
# and all of the consonants (everything else besides the vowels) to the next 
# consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', 
# and 'd' would become 'f'.

# Write 3 methods:
	# Method that swaps first, last name
	# Method that shifts vowels
	# Method that shifts consonants 
# Join string back together

=begin 
This is the most complex algorithm you've had to write, and the toughest release 
of this challenge. How will you break it down into manageable pieces? Try to 
identify all of the mini-challenges and considerations that show up in your algorithm, 
such as:
	When will it be helpful to convert the string to an array to work with it more easily?
		when rotating vowels, consonants => iterating through arrays to match & rotate 
			chars, then joining arrays back to strings.
	How will you figure out whether a letter is a vowel?
		create array of vowels, iterate through string using map
			take block that checks whether chars in string match any vowels
				if so, shifts (rotates) vowel by one
					store it in a new string
	How will you deal with the fact that some letters are uppercase?
		could make user input downcase
		and capitalize at end, before printing/storing.
		otherwise, could write separate method for dealing with capitalized chars.
	How will you handle edge cases?
		would rotate work on edge cases? it seems to works on vowels without
		reassigning values (if 'z', 'z' == 'a')
=end 

def name_swap(name)
	name.reverse.split(' ')
end 

name_swap("Felicia Torres")



def vowel_shift(str) # define method that takes a string as its argument
    vowels = ["a", "e", "i", "o", "u"]
    str = str.split('')
    new_str = str.map do |char| 
        if vowels.include?(char)
            vowels.rotate(1)[vowels.index(char)] # <= TEST 
        else 
            char
        end 
    end 
    new_str.join
end 

# p vowel_shift("Felicia Torres")

puts "Welcome to the Secret Agent Alias Manager!"
puts "What is your first name?"
first_name = gets.chomp.downcase
    
puts "What's your last name?"
last_name = gets.chomp.downcase

# split vowels of names, same for consonants. Join them back together
# write 2 methods: one for vowels, one for consonants. 
# set up loop to iterate through characters
# Rotate, not next



def vowel_shift(str)
  vowels = ["a", "e", "i", "o", "u"]
  str = str.split('')
  str_new = str.map do |char|
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
    else
      char
    end
  end
  str_new.join
end

def consonant_shift(str)
  consonants = ["b", "c", "d", "e", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  str = str.split('')
  str_new = str.map do |char|
    if consonants.include?(char)
      consonants.rotate(1)[consonants.index(char)]
    else
      char
    end
  end
  str_new.join
end
