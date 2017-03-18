
# PSEUDO

# 1: Swapping the first and last name.
# 2: Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
# and all of the consonants (everything else besides the vowels) to the next 
# consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', 
# and 'd' would become 'f'.


=begin 

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
		Rotate will move last item in array to index zero, so 'z' will rotate to 'a'.
=end 


###################


puts "Welcome to the Alias Manager!"
puts "What is your first name?"
first_name = gets.chomp.downcase
    
puts "What is your last name?"
last_name = gets.chomp.downcase


# def name_swap(str)
#    str = str.split(' ').reverse
#    str.join
# end 


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
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", 
  	"p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
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

# Store methods in variables
# Combine at end of program


new_first = consonant_shift(vowel_shift(first_name)).capitalize
new_last = consonant_shift(vowel_shift(last_name)).capitalize

p new_last + " " + new_first