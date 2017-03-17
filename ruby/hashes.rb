# Write a program that will allow users to enter data
# Enter the name of the document at the top
# Ask the user to input informatiom
# Create an empty hash
# Prompt and allow an interior designer to enter the details of a given client: the client's 
# name, age, number of children, decor theme
# save each detail into created hash
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the designer has answered all of the questions.
# Give the user the opportunity to update a key, if "none", skip it. 
# If the user enters name of what they'd like to change, allow them to input the correction
# Overwrite the existing value pair  
# Print the latest version of the hash, and exit the program.

puts "Interior Designer Job Application"
puts "Please enter the following:"

client_information = {}

puts "Full name:"
full_name = gets.chomp
client_information["full_name"] = full_name


puts "Age:"
age = gets.chomp.to_i 
client_information["age"] = age
 
 
puts "Number of children:"
number_of_children = gets.chomp.to_i 
client_information["number_of_children"] = number_of_children
 
 
puts "Decor theme:"
decor_theme = gets.chomp
client_information["decor_theme"] = decor_theme

puts " "
puts client_information

"Name: #{full_name}"
"Age: #{age}"
"Number of children: #{number_of_children}"
"Decor theme: #{decor_theme}"

puts ""
puts "Are there any changes you would like to make to the information 
entered above? Please specify where by typing: 'name', 'age', 'number o
f children', 'decor theme', or 'none' if there are no changes."


edit_info = gets.chomp
    if edit_info == "none"
        puts "Thank you."
    elsif "name"
        puts "Please enter the correct information:"
        client_information[edit_info] = gets.chomp
    elsif "age"
        puts "Please enter the correct information:"
        client_information[edit_info] = gets.chomp
    elsif "number of children"
        puts "Please enter the correct information:"
        client_information[edit_info] = gets.chomp
    else "decor theme"
        puts "Please enter the correct information:"
        client_information[edit_info] = gets.chomp
    end 

puts " "
puts "Thank you."
puts " "

client_information