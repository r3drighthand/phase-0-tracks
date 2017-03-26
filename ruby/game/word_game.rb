# game class

# Using plain old English in a text file or other scratch pad, pseudocode 
# a class for a word-guessing game that meets the following specifications. 
# Assume your driver code will handle input and output as far as the user 
# is concerned. In other words, write a class designed for a computer program 
# to use, not one designed for a human to use directly, then use driver code 
# to bridge the gap between human and Ruby object.

# One user can enter a word (or phrase, if you would like your game to support 
# that), and another user attempts to guess the word.

# Guesses are limited, and the number of guesses available is related to the 
# length of the word. Repeated guesses do not count against the user.

# The guessing player receives continual feedback on the current state of the 
# word. So if the secret word is "unicorn", the user will start out seeing 
# something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the 
# user enters a guess of "c".

# The user should get a congratulatory message if they win, and a taunting 
# message if they lose.

# PSEUDO

# No interface?

# Make class for word guessing game.
# Make initialize method. 
# Write method for user to enter a word.
# Write method to keep track of word guesses.
# Write method to determine whether player has won or lost, and print messages.
# Method to count how long a word is

# Take a word and turn it into dashes
# How? An array?

####################################

# SAMPLE PSEUDO

# Store phrase in a string
# Make array of guessed letters
# Calculate max size for number of wrong guesses
# 	- find all unique letters in phrase
# 	- 1 wrong guess for every 5 unique letters (using base 5 to calculate)
# define make hint string
# 	- for each character in the phrase, 
# 		- if it's not a letter, print it
# 		- if it's in the guessed letter array, print letter
# 		- otherwise print _
# 		- unless it's the last letter in the phrase, print a space after the letter " "
# define method for checking if letter is a new guess
# 	- check if it's a valid letter
# 	- compare letter to guessed letters array
# define method for adding a new guess
# 	- add letter to guessed letters array
# define method to check win/loss
# 	- if hint string contains no _ characters, player wins
# 	- if wrong guesses left is 0, player loses



####################################


class WordGame

	attr_reader # :guesses_left, :is_over

	def initialize(word)
		@word = word 
		@word_array = @word.split('')
		@letter_bank = []
		@guesses_left = # ?
		@is_over = false
		
		# @letter_spaces = @word.length 

	end

	def create_spaces
    	@mystery_word = @word_array.map {|letter| '_ '}
    	p @mystery_word.join # <= remove p
	end

end 

# DRIVER CODE
game = WordGame.new("unicorn")
game.create_spaces

# MY PSEUDO

# Take string (word) and store it
# Turn string into array
# Display array as underscores: '_ '

# Calculate number of guesses left based on length of string
	# Could be total number of letters plus 5
	# Display guesses remaining

# Create method for keeping track of guesses
	# WHILE game is not over: 
		# IF guessed letter does not match string array char
			# decrease count with each wrong guess
			# when no guesses are left, the game is over
		# ELSE
			# game keeps going until word is guessed


# Create method for matching guessed letters to letters in string array
	# IF guessed letter matches letter in string array,
		# replace underscore with letter (display it)
	# ELSE add guessed letter to wrong guess array
		# Print letters in array so user can see what's already been guessed

# Wrong guessed letters must be stored in array
	# Display wrong guesses




# How to turn string into individual letters?
	# How to turn letters into underscores or dashes for guessing?
	# How to display the dashes?
	# How to continually update "mystery word" each time guess is made?
	# How to display wrong-guessed letters?
	# How to display guesses remaining?

	# We don't need an array for correct guesses, just wrong ones.
	# def letters_guessed
	# 	@letter_bank << letter_guessed 
	# 	p @letter_bank
	# end 



















































# bumblebees game class

# class WordGame

#   attr_accessor :guess_count :word, :letters_guessed, :word_input, :word_array, :secret_word, :guess_remaining

#   def initialize(word)
#     @word_length = word.length
#     @guess_count = 0
#     @guess_remaining = word.length + 10
#     @game_over = false
#     @secret_word = secret_word
#     @letters_guessed = []
#     @word_array = @word.split(' ')
#   end 

#   def letter_bank(letter)
#     letters_guessed << letter
#   end

#   def letter=(letter)
#     @letter = letter

#   def guessing_letters (word)
#     @word_array = @word.split(' ')
#   end

#   def update_spaces(letter)
#     @word_array.each do |letter|
#       if @word_array.include? letter
#         print @letter
#         else
#           @word_array.each print '_ '
#       end
#   end

#   def create_spaces(word)
#     @letter_spaces = word.length
#     @secret_word = letter_spaces.map {|word| '_ '}
#   end

#   def start_game 
#     until @guess_limit == @guess_count 
#       @guess_count =+ 1
#     if @solution.include?(@letter)
#       puts "good!"
#     else 
#       puts "bad..."
#     end 

#   def game_over
#     p @letter_spaces
#     if !@letter_spaces.include?('_ ')
#       @game_over = true
#       p @game_over
#     else
#       @game_over = false
#       p @game_over
#     end
#   end 

# end


# # User Interface

# puts "Ready Player 1! Enter a word for Player 2 to guess:"
# game = WordGame.new(word)
# game.word = gets.chomp

# puts "Saving word... Word is now hidden!"

# game.start_game(game.word)
# game.word

# game.create_spaces(game.word)

# puts "Ready Player 2! Guess the secret word, one letter at a time!"
# puts "You have #{game.guess_remaining} guesses remaining. Go!"

# @letter = gets.chomp
# game.update_spaces(@letter)
# game.letter_bank(@letter)
# p @letters_guessed

# def start_game 
#     until @guess_limit == @guess_count 
#       @guess_count =+ 1
#     if @solution.include?(@letter)
#       puts "good!"
#     else 
#       puts "bad..."
#     end 

#   def game_over
#     p @letter_spaces
#     if !@letter_spaces.include?('_ ')
#       @game_over = true
#       p @game_over
#     else
#       @game_over = false
#       p @game_over
#     end
#   end 












