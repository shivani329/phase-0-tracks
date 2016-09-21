# Ask user for information (name age number of kids theme and choose your own)
# Save as temp variables, convert to integers if needed
# create hash with symbols for keys, print the hash
# ask user if they want to change any of their inputs if not say none
# update key with new value
# print 






puts "Client's Name:"
name = gets.chomp
puts "Client's Age:"
age = gets.chomp.to_i
puts "Number of children:"
children = gets.chomp.to_i
puts "Decor Theme:"
theme = gets.chomp
puts "Desired compensation:"
compensation = gets.chomp

designer_info = {
	:name => name,
	:age => age,
	:children => children,
	:theme => theme,
	:compensation => compensation
}

p designer_info

p "Do you need to change an answer? Please input the value name (example: decor_theme) that you want to edit, or type none"
input = gets.chomp
if input == "none"
else
	p "input new #{input}"
	new_input = gets.chomp
	designer_info[input.to_sym] = new_input
end
p designer_info
	