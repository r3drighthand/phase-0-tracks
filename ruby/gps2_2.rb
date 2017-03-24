# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Turn string into array
  # Iterate through the array to create a hash
  # set default quantity to 1
  # print the list to the console [p, print, puts]
# output: hash with key/value pair pf carrots(.etc)/

def create_list(grocery_items)
	list = {}
	grocery_items.split.each do |item|
		list[item] = 1
	end
	p list
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add item with quantity to hash (ex: hash[item name] = optional quantity)
# output: hash with item added

def add_item(list, item, quantity=1)
	list[item] = quantity
end

# Method to remove an item from the list
# input: list, item name
# steps: remove key from hash
# output: the hash no longer has the item

def remove_item(list, item)
	list.delete(item)
end 

# Method to update the quantity of an item
# input: list, item, quantity
# steps: update quantity
# output: the hash has updated quantity

def update_quantity(list, item, quantity)
	list[item] = quantity
end

# Method to print a list and make it look pretty
# input: list
# steps: iterate through list and present the list in an easy to read manner
# output: an easy to read list

def print_pretty_list(list)
	list.each do |item, quantity|
		puts "#{item} - #{quantity}"
	end
end

# DRIVER CODE

grocery_list = create_list("carrots apples cereal pizza")
# p grocery_list
add_item(grocery_list, "ice cream", 7)
p grocery_list

remove_item(grocery_list, "ice cream")

p grocery_list

update_quantity(grocery_list, "pizza", 5)
p grocery_list

print_pretty_list(grocery_list)
