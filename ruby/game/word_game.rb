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

# Make class for word guessing game.
# Make initialize method. 
# Write method for user to enter a word.
# Write method to keep track of word guesses.
# Write method to determine whether player has won or lost, and print messages.
# Method to count how long a word is

# Take a word and turn it into dashes
# How? An array?


class WordGame

	attr_reader :guess_count
	# word_length, guess_count, guess_remaining, game_over, mystery_word, 
	# letters_guessed, word_array

	def initialize(word)
		@word = word 
	end

	def letters_guessed
		letter_bank = []
		letter_bank << letter_guessed 
		p letter_bank
	end 


end 

# DRIVER CODE
game = WordGame.new("unicorn")

























































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














