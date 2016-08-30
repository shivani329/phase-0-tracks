


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
