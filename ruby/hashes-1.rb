#chipmunks


#intake info (name age number of kids theme and hours of work needed, currently employed, favorite color)
# ask user for info
# convert input to appropriate data type (.to_s .to_i
#print out hash 
#give user chance to update any keys
		# designer can opt out of option
		#if wants to update key, ask for new value and update key
# print hash, exit 

def designer 

	puts "Please enter the appropriate data below"

	puts "Client Name:"
		user_name = gets.chomp

	puts "Client Age:"
		user_age = gets.chomp.to_i

	puts "Number of children:"
		user_children = gets.chomp.to_i

	puts "Decor Theme:"
		user_theme = gets.chomp

	puts "Hours of work needed:" 
		user_hours = gets.chomp.to_i

	puts "Currently Employed? Yes or No:"
		# .downcase will allow the program to work regardless of if the user says Yes or yes/No or no
		user_employed = gets.chomp.downcase 
		if user_employed = "yes"
			user_employed = true
		elsif user_employed = "no"
			user_employed = false
		end

	puts "Favorite Color:"
			user_color = gets.chomp

	