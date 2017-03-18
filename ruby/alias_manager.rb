
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
	How will you figure out whether a letter is a vowel?
	How will you deal with the fact that some letters are uppercase?
	How will you handle edge cases?

=end 

def name_swap(name)
	name.reverse.split(' ')
end 

name_swap("Felicia Torres")


def vowel_shift(x)
    vowels = ["a", "e", "i", "o", "u"]





# TEST CODE


# INTERFACE