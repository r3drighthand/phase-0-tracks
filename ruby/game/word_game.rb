# PSEUDO

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


####################################

# GAME LOGIC

class WordGame

	attr_reader :word, :guess_count

	# remember to remove p statements after debugging! 

	def initialize(word)
		@word = word 
		@answer = ""
		@is_over = false
		@guess_count = 0
	end

	def create_spaces
		@mystery_word = @word.split("").map {|letter| "_"}
    	p @mystery_word.join
	end

	def guessed_letters(user_input)
		@letter_bank = []
		@letter_bank.push(user_input)
		p @letter_bank.join
	end 

	def limit
		@guess_limit == @word.length + 5
	end

	def letter_matching
		#
	end 

	def guessing_letters(user_input)
		until @guess_count == 
	end

end 

# write method for matching guessed letters to letters in mystery_word array

# DRIVER CODE
# game = WordGame.new("unicorn")
# game.create_spaces
# game.guess_count
# game.guessed_letters("k")
# game.guessed_letters("r")



# USER INTERFACE

puts "Player 1, enter a word for Player 2 to guess:"
word = gets.chomp 
game = WordGame.new(word)

is_over = false
guess_count = 0

30.times {puts ""}

puts "Player 2, guess a letter."

# until @guess_limit == @word.length + 5

