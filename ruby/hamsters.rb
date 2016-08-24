# need hamster name
# fur color 
# volume level 
# good canditate for adoption
# estimated age..if answer is blank should be nil 


puts "What is the hamster's name?"
name = gets.chomp
volume = -1
until volume > 0 
	puts "On a scale from 1 to 10 how loud is your hamster?"
	volume = gets.chomp.to_i
		if volume == 0
			puts "I'm sorry, please enter a number from 1 to 10"
		elsif volume > 10
			puts "I'm sorry, please enter a number from 1 to 10"
		elsif volume < 0
			puts "I'm sorry, please enter a number from 1 to 10"
		end
end

puts "What is the color of the hamster's fur?"
color = gets.chomp

adoptable = nil
until adoptable != nil

		puts "Is this hamster a good candidate for adoption? (y/n)"
		can_adopt = gets.chomp 

		if can_adopt == "y"
				adoptable = true
		elsif can_adopt == "n"
				adoptable = false
		else 
			puts "I didn't understand you. Try again."
			
	end
end

valid_answer = false

until valid_answer == true 

	puts "What is the estimated age of the hamster? If you are unsure, please enter n/a."
	age = gets.chomp
	age_float = age.to_f
		if age  == "n/a"
			age = nil 
			valid_answer = true
			agestatement = "It's age is unknown "
		elsif age_float < 0.0
			puts "I'm sorry, that is not a valid age."
			valid_answer = false
		elsif age_float > 0.0 
			valid_answer = true
			agestatement = "It is about #{age} years old"
		elsif  age_float == 0.0
			puts "I'm sorry, that is not a valid age."
			valid_answer = false
		end
end

if can_adopt == "y"
	adoptstatement = "the hamster is a good candidate for adoption"
elsif can_adopt == "n"
	adoptstatement = "the hamster is not a good candidate for adoption"
end



puts "So, if I've got things right your hamsters name is #{name}, they have a volume level of #{volume}, and they are #{color} in color. #{agestatement} and #{adoptstatement}"












			