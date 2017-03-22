
=begin 

module Shout
 	def self.yell_angrily(words)
 		words + "!!!" + " :("
    end

    def self.yell_happily(words)
 		words + "!!!" + " :)"
    end
end


# DRIVER CODE
p Shout.yell_angrily("Go away")
p Shout.yelling_happily("Come back")

=end 

module Shout
	def yell_angrily(words)
		puts words + "!!!" + " :("
	end

	def yell_happily(words)
		puts words + "!!!" + " :)"
	end
end

class SamJackson
	include Shout
end

class BruceWillis
	include Shout
end

unbreakable = SamJackson.new
unbreakable.yell_angrily("I'm not a mistake")

die_hard = BruceWillis.new
die_hard.yell_happily("Yippee ki yay, mother****er")