# need hamster name
# fur color 
# volume level 
# good canditate for adoption y/n
# estimated age..if answer is blank should be nil 


puts "What is the hamster's name?"
name = gets.chomp
volume = -1
until volume > 0 
	puts "On a scale from 1 to 10 how loud is the hamster?"
	volume = gets.chomp.to_i
<<<<<<< HEAD
		if volume <= 0
=======
		if volume == 0
>>>>>>> a587bbc0e9b7f368f97042b8ec5ac83f6903fd6c
			puts "I'm sorry, please enter a number from 1 to 10"
		elsif volume > 10
			puts "I'm sorry, please enter a number from 1 to 10"
		volume = -1
<<<<<<< HEAD
			
		end
=======
			end
>>>>>>> a587bbc0e9b7f368f97042b8ec5ac83f6903fd6c
end

puts "What is the color of the hamster's fur?"
color = gets.chomp

adoptable = nil
until adoptable != nil

		puts "Is this hamster a good candidate for adoption? (y/n)"
		can_adopt = gets.chomp 

		if can_adopt == "y"
				adoptable = true
<<<<<<< HEAD
				adoptstatement = "This hamster is a good candidate for adoption."
		elsif can_adopt == "n"
				adoptable = false
				adoptstatement = "This hamster is not a good candidate for adoption."
=======
		elsif can_adopt == "n"
				adoptable = false
>>>>>>> a587bbc0e9b7f368f97042b8ec5ac83f6903fd6c
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
			agestatement = "It's age is unknown."
<<<<<<< HEAD
		elsif age_float <= 0.0
=======
		elsif age_float < 0.0
>>>>>>> a587bbc0e9b7f368f97042b8ec5ac83f6903fd6c
			puts "I'm sorry, that is not a valid age."
			valid_answer = false
		elsif age_float > 0.0 
			valid_answer = true
			agestatement = "It is about #{age} year(s) old."
<<<<<<< HEAD

		end
end




puts "So, if I've got things right the hamster's name is #{name}, has a volume level of #{volume}, and is #{color} in color. #{agestatement} #{adoptstatement}"


=======
		elsif  age_float == 0.0
			puts "I'm sorry, that is not a valid age."
			valid_answer = false
		end
end

if can_adopt == "y"
	adoptstatement = "is a good candidate for adoption."
elsif can_adopt == "n"
	adoptstatement = "is not a good candidate for adoption."
end



puts "So, if I've got things right:"
puts "The hamster's name is #{name}."
puts "On a scale from 1 to 10, it has a volume level of #{volume}."
puts "It has #{color} fur."
puts "#{agestatement}, and #{adoptstatement}."









			
>>>>>>> a587bbc0e9b7f368f97042b8ec5ac83f6903fd6c
