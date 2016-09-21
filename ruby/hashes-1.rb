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

	user_data = {

		name: user_name ,
		age: user_age ,
		children: user_children ,
		theme: user_theme ,
		hours: user_hours ,
		employed: user_employed ,
		color: user_color 
	}

	p user_data

	puts "Would you like to make any changes? If so, please respond with name, age, children, theme, 
			hours, employed, or color. If no, please respond with 'done'"

	user_update = gets.chomp

	
	if user_update == :done #this is what I should use to add :done to the hash as a symbol
		puts "No changes made"
	elsif user_update == ":name" || ":age" || ":children" || ":theme" || ":hours" || "employed" || "color"
 			puts "Please enter the new information"
 			new_data = gets.chomp
 			#this pushes the user update of whatever they inputted(new_data) into the user_data hash
 			user_data[user_update] = "#{new_data}"
 	end

 	p user_data

 end

 design









