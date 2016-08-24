def vampire_detector
	puts "How many employees are being processed today?"
	new_employees = gets.chomp.to_i
	starting_number = 0

until starting_number == new_employees
	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	birth_year = gets.chomp.to_i

	current_year = 2016


		valid_input = false
		until valid_input
			puts "Want some garlic bread? Please answer Yes or No"
			garlic_bread = gets.chomp
			if garlic_bread == "Yes" || garlic_bread == "No"
				valid_input = true
			else puts "Please answer Yes or No"
			end 

		end

		valid_input = false
		until valid_input
			puts "Would you like to enroll in the company's health insurance? Please answer Yes or No"
			insurance = gets.chomp
			if insurance == "Yes" || insurance == "No"
				valid_input = true
			else puts "Please answer Yes or No"
			end 

end



	if (name == "Drake Cula") || (name == "Tu Fang")
			puts "Definitely a Vampire"
		elsif (2016 - birth_year != age) && (garlic_bread == "No") && (insurance == "No")
			puts "Almost certainly a Vampire"
		elsif (2016 - birth_year != age) && (garlic_bread == "No" || insurance == "No")
			puts "Probably a Vampire"
		elsif (2016 - birth_year = age) && (garlic_bread == "Yes" || insurance == "Yes")
			puts "Probably not a vampire"
		else 
			puts "Results Inconclusive"
		end 

	
	p "Name: #{name}"
	p "Age: #{age} years old"
	p "Year born: #{birth_year}"
	p "Garlic bread?: #{garlic_bread} to garlic bread"
	p "Insurance: #{insurance} to insurance."
	

	starting_number = starting_number += 1 
	end
end 


vampire_detector