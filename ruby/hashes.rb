=begin 
# PSEUDOCODE
Write interface program so user can enter data.
User should receive prompts for each data entry.
Convert user input into correct data type.
Store that data in variables.
Those variables should be the values of a key/value pair in an empty hash.
Add client data to empty hash with each entry.
Print hash to console.
Prompt user to correct any incorrect info, or type 'done'.
Set up one-time loop (if/elsif/else) to store user input, or exit program if 
	user types 'done'.
Print updated hash.

=end 

puts "Interior Designer Job Application"
puts "Please provide the following information:"

client_data = {}

puts "Full name:"
full_name = gets.chomp
client_data["full_name"] = full_name


puts "Age:"
age = gets.chomp.to_i 
client_data["age"] = age
 
 
puts "Number of children:"
children = gets.chomp.to_i 
client_data["children"] = children
 
 
puts "Decor theme:"
decor_theme = gets.chomp
client_data["decor_theme"] = decor_theme

puts " "
puts client_data

"Name: #{full_name}"
"Age: #{age}"
"Number of children: #{children}"
"Decor theme: #{decor_theme}"

puts ""
puts "Are there any changes you would like to make to the information 
entered above? Please specify where by typing: 'full_name', 'age', 'children', 
'decor_theme', or 'none' if there are no changes."


edit_data = gets.chomp
    if edit_data == "none"
        puts "Thank you."
    elsif "full_name"
        puts "Please enter the correct information:"
        client_data[edit_data] = gets.chomp
    elsif "age"
        puts "Please enter the correct information:"
        client_data[edit_data] = gets.chomp
    elsif "number of children"
        puts "Please enter the correct information:"
        client_data[edit_data] = gets.chomp
    else "decor theme"
        puts "Please enter the correct information:"
        client_data[edit_data] = gets.chomp
    end 

puts " "
puts "Thank you for filling out our form!"
puts "Have a great day!"
puts " "

client_data