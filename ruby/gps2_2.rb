# Pseudocode:

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # string.split(" ") convert to array
  # use .each to iterate over array values
  # set up an empty hash = {}
  # hash << 
  # example input (hash): carrots: 2, apples: 4, cereal: 8, pizza: 3

  # set default quantity: 0
  # print the list to the console [can you use one of your other methods here?]
# output: [hash]

# ==============================

def create_list(grocery_str)
	grocery_list = grocery_str.split # ["carrots", "apples", "cereal", "pizza"]
    grocery_hash = {}
    grocery_list.each do |food_items|
      grocery_hash[food_items] = 0
    end 
    grocery_hash
end 

puts create_list("carrots apples cereal pizza")
    our_list = create_list("carrots apples cereal pizza")
    
def grocery_item_adder(grocery_list, item, qty)
    grocery_list[item] = qty
    grocery_list
end

grocery_item_adder(our_list, "cookies", 3)
grocery_item_adder(our_list, "lemonade", 2)
grocery_item_adder(our_list, "tomatoes", 3)
grocery_item_adder(our_list, "onions", 1)
grocery_item_adder(our_list, "ice cream", 2)



# DRIVER CODE FOR DELETE 
def grocery_item_deleter(grocery_list, item, qty)
  grocery_list.delete(item)
  grocery_list.delete(qty)
  grocery_list
end

grocery_item_deleter(our_list, "lemonade", 2)

# DRIVER CODE FOR CHANGING VALUE IN HASH
def current_list(grocery_list, item, qty)
  grocery_list[item] = qty
  grocery_list
end

current_list(our_list, "ice cream", 1)



# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: takes item name & optional quantity and adds them to existing hash
# hash[key] = value
# output: hash {"carrots" => 1}

# Method to remove an item from the list

# Write grocery_delete method
# input: list, item name
# steps: delete "lemonade" and hash value
# output: updated list store and return with correct keys/values.

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

=begin 

1. What did you learn about pseudocode from working on this challenge?
- Pseudocoding is helpful because it allows you to "map" out your problem solving process. You can then follow your own instructions as you build the program. Pseudocoding helps simplify challenges that appear complex by identifying and separating each problem into smaller problems. It's a useful way to organize and plan. Using plain English to pseudocode improves comprehension because there's nothing to "translate."

2. What are the tradeoffs of using arrays and hashes for this challenge?
- In this case, hashes make more sense than arrays because we needed a key/value pair for the grocery item/quantity, and hashes are structured for that kind of data. Arrays are suited to storing sequential data, while hashes are suited for storing relational data. If we used an array, we'd have to use more than one, and adding to the array, removing objects, and changing data would have been more difficult. We'd have to use indices to add/remove/change data and it just doesn't make a lot of sense to do that when hashes were designed for these kinds of programming needs. 

3. What does a method return?
- A method returns the last data point in a function body.

4. What kind of things can you pass into methods as arguments?
- Any object can pass as an argument: integers, strings, booleans, and even other methods.

5. How can you pass information between methods?
- You can "hand off" information between methods using variables, storing function output in variables and then using those variables as input in another function. 

6. What concepts were solidified in this challenge, and what concepts are still confusing?
- The process of passing data between methods is clear now. Also, I used to struggle with understanding exactly what a block parameter is used for, but after my GPS guide explained it I understand it better.
- I still need to work on writing pseudocode properly because I like mixing pseudo with code examples and it gets confusing the longer I work on a challange.


=end 
