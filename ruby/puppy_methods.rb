# PUPPY METHODS

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end



# DRIVER CODE

# initialize instance of Puppy
ruthie = Puppy.new
ruthie.fetch("ball")